using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using HtmlAgilityPack;

namespace InformationSystemOfChair
{
    public class NuwmNewsParser
    {
        static string loadedHtmlPath = @"news.html";
        const string nuwmUrl = @"http://nuwm.edu.ua/";
        const string nuwmNewsUrl = @"http://nuwm.edu.ua/university/news";

        static HtmlDocument GetHtmlDocument(string url, string nameOfDownloadedFile)
        {
            UploadFileFromInterner(url, nameOfDownloadedFile);
            HtmlDocument html = new HtmlDocument();
            html.Load(nameOfDownloadedFile, System.Text.Encoding.GetEncoding("utf-8"));
            return html;
        }

        static void UploadFileFromInterner(string url, string nameOfDownloadedFile)
        {
            using (var client = new WebClient())
            {
                client.DownloadFile(url, nameOfDownloadedFile);
            }
        }

        public async Task<List<NuwmNews>> GetLastNews()
        {

            List<NuwmNews> newsList = new List<NuwmNews>();
            HtmlDocument nuwmNewsHtmlDocument = GetHtmlDocument(nuwmNewsUrl, "nuwmnews.html");
            List<HtmlNode> articleBlocks = nuwmNewsHtmlDocument.DocumentNode.Descendants("article").Where(d =>
    d.Attributes.Contains("class") && d.Attributes["class"].Value.Contains("vcard clearfix")).ToList();

            foreach (var article in articleBlocks.Take(10))
            {
                NuwmNews news = new NuwmNews();

                //Дата новини
                HtmlNode descriptionDiv = article.Descendants("div").FirstOrDefault(d =>
                    d.Attributes.Contains("class") && d.Attributes["class"].Value.Contains("description"));
                HtmlNode time = descriptionDiv.Descendants("time").FirstOrDefault();
                news.Date = time.InnerText;

                //Невеличкий опис та айді новини
                HtmlNode p = descriptionDiv.Descendants("p").FirstOrDefault();
                news.Description = p.InnerText;
                news.NewsId = p.Attributes["id"].Value.Replace("news-item-desc-", "");

                //Заголовок статті
                HtmlNode aInDescriptionDiv = descriptionDiv.Descendants("a").FirstOrDefault();
                news.Title = aInDescriptionDiv.InnerText;

                //Url статті
                HtmlNode flDiv = article.Descendants("div").FirstOrDefault(d =>
                    d.Attributes.Contains("class") && d.Attributes["class"].Value.Contains("fl"));
                HtmlNode aInFlDiv = flDiv.Descendants("a").FirstOrDefault();
                news.Url = aInFlDiv.Attributes["href"].Value;

                //Завантаження фото статті
                HtmlNode imgInA = aInFlDiv.Descendants("img").FirstOrDefault();

                news.ImagePath = "..//..//Images//" + news.NewsId + ".jpg";

                UploadFileFromInterner(nuwmUrl + imgInA.Attributes["src"].Value.Replace("170x140", "220x180"), news.ImagePath);

                //Завантаження тексту статті
                HtmlDocument articlePage = GetHtmlDocument(news.Url, news.NewsId + ".html");
                HtmlNode itemDetailedArticle = articlePage.DocumentNode.Descendants("article").FirstOrDefault();
                HtmlNode divWithContent = itemDetailedArticle.Descendants("div").FirstOrDefault();
                news.Content = divWithContent.InnerHtml;
                int index = news.Content.IndexOf("<div class=\"s1\"");
                if (index != -1)
                {
                    news.Content = news.Content.Remove(index);
                }
                newsList.Add(news);
            }

            return newsList;
        }


    }
}

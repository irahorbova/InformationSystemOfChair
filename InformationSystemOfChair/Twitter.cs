﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace InformationSystemOfChair
{
    public class Twitter
    {
        private const string OAuthConsumerKey = "ZfqKYvs55rZZrmbQvW7TQdT7i";
        private const string OAuthConsumerSecret = "FCsCU0jvqijWjyUB8X8M4vgBUG7oIpxv8faWdiQOkbSUHN5dBl";

        public static async Task<string> GetAccessTokenAsync()
        {
            var httpClient = new HttpClient();
            var request = new HttpRequestMessage(HttpMethod.Post, "https://api.twitter.com/oauth2/token ");
            var customerInfo = Convert.ToBase64String(new UTF8Encoding()
                                      .GetBytes(OAuthConsumerKey + ":" + OAuthConsumerSecret));
            request.Headers.Add("Authorization", "Basic " + customerInfo);
            request.Content = new StringContent("grant_type=client_credentials", Encoding.UTF8,
                                                                      "application/x-www-form-urlencoded");

            HttpResponseMessage response = await httpClient.SendAsync(request);

            string json = await response.Content.ReadAsStringAsync();
            var serializer = new JavaScriptSerializer();
            dynamic item = serializer.Deserialize<object>(json);
            return item["access_token"];
        }

        public static async Task<List<TwitterPost>> GetTweets(string userName, int count, string accessToken = null)
        {
            if (accessToken == null)
            {
                accessToken = await GetAccessTokenAsync();
            }

            var requestUserTimeline = new HttpRequestMessage(HttpMethod.Get,
                string.Format("https://api.twitter.com/1.1/statuses/user_timeline.json?count={0}&screen_name={1}",
                              count, userName));
            requestUserTimeline.Headers.Add("Authorization", "Bearer " + accessToken);
            var httpClient = new HttpClient();
            HttpResponseMessage responseUserTimeLine = await httpClient.SendAsync(requestUserTimeline);
            var serializer = new JavaScriptSerializer();
            dynamic json = serializer.Deserialize<object>(await responseUserTimeLine.Content.ReadAsStringAsync());
            var enumerableTweets = (json as IEnumerable<dynamic>);

            if (enumerableTweets == null)
            {
                return null;
            }

            IEnumerator<dynamic> ienumerator = enumerableTweets.GetEnumerator();
            List<TwitterPost> posts = new List<TwitterPost>();
            while (ienumerator.MoveNext())
            {
                TwitterPost tp = new TwitterPost();
                string imageUrl = (string)ienumerator.Current["user"]["profile_image_url_https"];
                ulong userId = (ulong)ienumerator.Current["id"];
                using (WebClient webClient = new WebClient()) 
                {
                    tp.UserPhotoPath = "..//..//Images//" + userId.ToString() + ".jpg";
                    webClient.DownloadFile(imageUrl, tp.UserPhotoPath); 
                }

                tp.Name = (string)ienumerator.Current["user"]["name"];
                tp.ScreenName = "@" + (string)ienumerator.Current["user"]["screen_name"];
                tp.Text = (string)ienumerator.Current["text"];
                tp.CreatedAt = (string)ienumerator.Current["created_at"];

                posts.Add(tp);
            }

            Debug.WriteLine("Here");

            return posts;
        }

    }
}

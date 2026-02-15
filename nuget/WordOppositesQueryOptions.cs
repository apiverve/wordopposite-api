using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.WordOpposites
{
    /// <summary>
    /// Query options for the Word Opposites API
    /// </summary>
    public class WordOppositesQueryOptions
    {
        /// <summary>
        /// The word to get the opposites for
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }
    }
}

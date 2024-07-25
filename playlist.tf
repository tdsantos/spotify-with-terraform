resource "spotify_playlist" "playlist" {
  name   = "Black Sabbath"
  tracks = ["7MDBR4dEvtOGNyOBKNmP8n"]
}

data "spotify_search_track" "black_sabbath" {
  artist = "Black Sabbath"
  limit = 20
}

resource "spotify_playlist" "black_sabbath" {
  name = "Black Sabbath"
  tracks = [data.spotify_search_track.black_sabbath.tracks[0].id,
  data.spotify_search_track.black_sabbath.tracks[1].id,
  data.spotify_search_track.black_sabbath.tracks[2].id,
  data.spotify_search_track.black_sabbath.tracks[3].id,
  data.spotify_search_track.black_sabbath.tracks[4].id,
  data.spotify_search_track.black_sabbath.tracks[5].id,
  data.spotify_search_track.black_sabbath.tracks[6].id,
  data.spotify_search_track.black_sabbath.tracks[7].id,
  data.spotify_search_track.black_sabbath.tracks[8].id,
  data.spotify_search_track.black_sabbath.tracks[9].id,
  data.spotify_search_track.black_sabbath.tracks[10].id,
  data.spotify_search_track.black_sabbath.tracks[11].id,
  data.spotify_search_track.black_sabbath.tracks[12].id]
}
(function() {
  module.exports = {
    find: function(raw, files) {
      var word;
      word = RegExp(raw, "gi");
      console.log(raw);
      console.log(files);
      return Object.keys(files).map(function(key) {
        var content, hit, results;
        results = [];
        content = files[key].content;
        while ((hit = word.exec(content)) !== null) {
          results.push({
            location: hit.index,
            path: key
          });
        }
        return results;
      }).flatten();
    }
  };

}).call(this);

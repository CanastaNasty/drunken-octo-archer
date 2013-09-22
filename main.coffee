module.exports = 
  find: (raw, files) ->
    word = RegExp raw, "gi"
    console.log(raw)
    console.log(files)
    
    Object.keys(files).map (key) ->
      results  = []
      content = files[key].content
      
      while (hit = word.exec(content)) != null
        results.push
          location: hit.index
          path: key
          
      return results
      
    .flatten()
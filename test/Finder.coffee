Finder = require "../main"

describe "finder", ->
  files = 
    "TODO": 
      "content": "Doodoo"
    "README": 
      "content": "Read this and do what it says"
  
  results = Finder.find("do", files)
  console.log(results)
    
  it "should be case insensitive", ->
    assert.equal results[0].location, 0
    
  it "should scan across all files", ->
    assert.equal results[2].location, 14
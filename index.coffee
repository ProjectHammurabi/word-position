input = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
frequency = {}
input = input.toLowerCase()
input
  .split ' '
  .forEach (word) ->
    word = word.replace /(\,|\.)/, ''
    if !frequency[word]
      frequency[word] =
        frequency: 0
        matchedIndexes: []
      searchStart = 0
      instanceArr = input.match RegExp("\\b" + word + "\\b", "g")
      frequency[word].frequency = instanceArr.length
      instanceArr
        .forEach (instance) ->
          console.log(instance) #prints the unique word to the console
          currentIndex = input.indexOf instance, searchStart
          frequency[word].matchedIndexes.push currentIndex
          searchStart = currentIndex + instance.length + 1
console.log frequency #prints the entire array to the console

from fuzzywuzzy import process
import re

class SearchEngine:
    def __init__(self):
        self.lemma_dict = {
            "bats": "bat",
            "feet": "foot",
            "hanging": "hang",
            "striped": "stripe",
            "are": "be",
            "is": "be",
            "were": "be",
            "was": "be"
        }

    def lemmatize(self, word):
        return self.lemma_dict.get(word, word)

    def extract_text(self, text):
        # normalize text
        text = text.lower()
        text = re.sub(r'[^\w\s]', '', text)

        # tokenize text
        words = text.split()

        # apply lemmatization
        processed_words = [self.lemmatize(word) for word in words]

        # rejoin processed words
        processed_text = ' '.join(processed_words)

        return processed_text

    # Fuzzy matching, retained for backwards compatibility
    def fuzzy_match(self, query, choices):
        return process.extractOne(query, choices)[0]

# 示例使用
# search_engine = SearchEngine()
# text = "The striped bats are hanging on their feet for best"
# processed_text = search_engine.extract_text(text)
# print(processed_text)

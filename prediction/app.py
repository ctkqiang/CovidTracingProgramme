#!/usr/bin/env python3
import packages


class CovidPrediction:
    def __init__(self):
        self.main()

    def main(self):
        packages.PackagesInspector("scikit-learn")
        print("s")


if __name__ == "__main__":
    prediction = CovidPrediction()
    prediction.main

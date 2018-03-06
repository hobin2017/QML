"""
Aim: displaying the QML elements in the QWidget.
"""

import sys

from PyQt5.QtCore import QUrl
from PyQt5.QtQuick import QQuickView
from PyQt5.QtQuickWidgets import QQuickWidget
from PyQt5.QtWidgets import QMainWindow, QApplication


class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.widget1 = QQuickWidget(self)
        self.widget1.setSource(QUrl('qml_p59.qml'))
        self.setCentralWidget(self.widget1)


class MainWindow2(QQuickView):

    def __init__(self):
        super(MainWindow2, self).__init__()
        self.setSource(QUrl('qml_p42.qml'))



if __name__ == '__main__':
    app = QApplication(sys.argv)
    # using QQuickWidget
    mywindow = MainWindow()
    mywindow.show()

    # using QQuickView
    # mywindow2 = MainWindow2()
    # mywindow2.show()
    sys.exit(app.exec_())


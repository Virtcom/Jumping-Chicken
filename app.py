import pygame as pg
from pygame.locals import *

class App:
    def __init__(self):
        self.running = True
        self._display_surf = None
        self.size = self.weight, self.height = 1, 1

    def on_init(self):
        pg.init()
        self._display_surf = pg.display.set_mode(self.size, pg.HWSURFACE)
        self._running = True
        self.heddedright = True
        self.darwlist = []
        self.px = 50
        self.py = 50

    def on_event(self, event):
        if event.type == pg.QUIT:
            self._running = False

    def on_loop(self):
        pass
    def on_render(self):
        pass
    def on_cleanup(self):
        pg.quit()
    def getplayerpicture(self):
        if self.heddedright == True:
            self.player = pygame.image.load("textures/player2.png")
        else :
            self.player = pygame.image.load("textures/player.jpg")
        self.darwlist.append([self.player, self.x, self.y])
    def on_execute(self):
        if self.on_init() == False:
            self._running = False

        while (self._running):
            self.darwlist = []
            for event in pg.event.get():
                self.on_event(event)
            self.on_loop()
            self.on_render()
        self.on_cleanup()                

if __name__ == "__main__":
    theApp = App()
    theApp.on_execute()

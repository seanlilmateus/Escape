module Escape
  class MainViewController < NSViewController
    
    def loadView
      self.view = SKView.alloc.initWithFrame(SCREEN_FRAME)
      viewDidLoad
    end

    def viewDidLoad
      self.view.backgroundColor = SKColor.colorWithRed(0.15, green:0.15, blue:0.3, alpha:1.0)
      ## FOR DEBUGGING pretty handy
      # self.view.showsDrawCount = true
      # self.view.showsNodeCount = true
      # self.view.showsFPS = true
      loadStartScene
    end

    def loadStartScene
      # Configure the view
      scene = StartScene.sceneWithSize(self.view.bounds.size)
      scene.scaleMode = SKSceneScaleModeAspectFill

      # Present the scene.
      self.view.presentScene(scene)
    end

  end
end

.class Lcom/android/server/vr/XrDisplayManager$1;
.super Ljava/lang/Object;
.source "XrDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/XrDisplayManager;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/XrDisplayManager;


# direct methods
.method constructor <init>(Lcom/android/server/vr/XrDisplayManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/XrDisplayManager;

    .line 37
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 40
    const/4 v0, -0x1

    if-eq p1, v0, :cond_69

    .line 41
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$000(Lcom/android/server/vr/XrDisplayManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 42
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_58

    .line 43
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isExternalDisplay(Landroid/view/Display;)Z
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$100(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 44
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$202(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    goto :goto_58

    .line 45
    :cond_1d
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isTetheredDisplay(Landroid/view/Display;)Z
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$300(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 46
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$202(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    .line 47
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;
    invoke-static {v1}, Lcom/android/server/vr/XrDisplayManager;->access$400(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/GearVrManagerService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/vr/HmtEvent;->obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto :goto_58

    .line 48
    :cond_3d
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isXrScreenDisplay(Landroid/view/Display;)Z
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$500(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 49
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$602(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    goto :goto_58

    .line 50
    :cond_4b
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isMetaScreenDisplay(Landroid/view/Display;)Z
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$700(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 51
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v1, v0}, Lcom/android/server/vr/XrDisplayManager;->access$802(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    .line 54
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v1}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 55
    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v1}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayAdded(I)V

    .line 58
    .end local v0    # "display":Landroid/view/Display;
    :cond_69
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 79
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_26

    .line 80
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 81
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayChanged(I)V

    goto :goto_71

    .line 83
    :cond_26
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$600(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$600(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_4c

    .line 84
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 85
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayChanged(I)V

    goto :goto_71

    .line 87
    :cond_4c
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$800(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$800(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_71

    .line 88
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 89
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayChanged(I)V

    .line 92
    :cond_71
    :goto_71
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 62
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_28

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v2

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isExternalDisplay(Landroid/view/Display;)Z
    invoke-static {v0, v2}, Lcom/android/server/vr/XrDisplayManager;->access$100(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 63
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0, v1}, Lcom/android/server/vr/XrDisplayManager;->access$202(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    goto/16 :goto_a7

    .line 64
    :cond_28
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_5c

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$200(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v2

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isTetheredDisplay(Landroid/view/Display;)Z
    invoke-static {v0, v2}, Lcom/android/server/vr/XrDisplayManager;->access$300(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 65
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$400(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/GearVrManagerService;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mTetheredDisplay:Landroid/view/Display;
    invoke-static {v0, v1}, Lcom/android/server/vr/XrDisplayManager;->access$202(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    goto :goto_a7

    .line 67
    :cond_5c
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$600(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$600(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_82

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$600(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v2

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isXrScreenDisplay(Landroid/view/Display;)Z
    invoke-static {v0, v2}, Lcom/android/server/vr/XrDisplayManager;->access$500(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 68
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mXrScreenDisplay:Landroid/view/Display;
    invoke-static {v0, v1}, Lcom/android/server/vr/XrDisplayManager;->access$602(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    goto :goto_a7

    .line 69
    :cond_82
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$800(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$800(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_a7

    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$800(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;

    move-result-object v2

    # invokes: Lcom/android/server/vr/XrDisplayManager;->isMetaScreenDisplay(Landroid/view/Display;)Z
    invoke-static {v0, v2}, Lcom/android/server/vr/XrDisplayManager;->access$700(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 70
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # setter for: Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;
    invoke-static {v0, v1}, Lcom/android/server/vr/XrDisplayManager;->access$802(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Landroid/view/Display;

    .line 72
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 73
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager$1;->this$0:Lcom/android/server/vr/XrDisplayManager;

    # getter for: Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    invoke-static {v0}, Lcom/android/server/vr/XrDisplayManager;->access$900(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;->onXrDisplayRemoved(I)V

    .line 75
    :cond_b8
    return-void
.end method

.class Lcom/android/server/display/IntelligenceBrightnessControl$1;
.super Landroid/app/IProcessObserver$Stub;
.source "IntelligenceBrightnessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IntelligenceBrightnessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IntelligenceBrightnessControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/IntelligenceBrightnessControl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 779
    iput-object p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 783
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1700(Lcom/android/server/display/IntelligenceBrightnessControl;)Z

    move-result v0

    if-eqz v0, :cond_58

    if-eqz p3, :cond_58

    .line 784
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->getCurrentAppPkgName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1800(Lcom/android/server/display/IntelligenceBrightnessControl;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "PkgName":Ljava/lang/String;
    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mCurrentAppPkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$600(Lcom/android/server/display/IntelligenceBrightnessControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 786
    const-string v1, "com.samsung.android.MtpApplication"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 787
    const-string v1, "com.samsung.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 788
    const-string v1, "com.samsung.android.permissioncontroller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 791
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mCurrentAppPkgName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$602(Lcom/android/server/display/IntelligenceBrightnessControl;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 793
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl$1;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 800
    .end local v0    # "PkgName":Ljava/lang/String;
    :cond_58
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 803
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 807
    return-void
.end method

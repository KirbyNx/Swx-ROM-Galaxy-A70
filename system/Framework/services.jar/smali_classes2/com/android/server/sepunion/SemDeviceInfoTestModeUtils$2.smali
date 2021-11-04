.class Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 51
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$100(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$200(Landroid/content/Context;)V

    .line 52
    # getter for: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceInfoTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    # getter for: Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->access$500(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    return-void
.end method

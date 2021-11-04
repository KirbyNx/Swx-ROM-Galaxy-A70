.class Lcom/android/server/VibratorService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .line 2859
    iput-object p1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Lcom/android/server/VibratorService$1;

    .line 2859
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/VibratorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2863
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2864
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/VibratorService;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$3200()Z

    move-result v1

    const-string v2, "VibratorService"

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_20
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2867
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/VibratorService;->mCameraOn:Z
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$4902(Lcom/android/server/VibratorService;Z)Z

    goto :goto_9a

    .line 2868
    :cond_2f
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2869
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/VibratorService;->mCameraOn:Z
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$4902(Lcom/android/server/VibratorService;Z)Z

    goto :goto_9a

    .line 2870
    :cond_3e
    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 2871
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$5000(Lcom/android/server/VibratorService;)Lcom/samsung/android/server/audio/GoodCatchManager;

    move-result-object v1

    if-nez v1, :cond_9a

    .line 2872
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    new-instance v3, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object v4, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    # setter for: Lcom/android/server/VibratorService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;
    invoke-static {v1, v3}, Lcom/android/server/VibratorService;->access$5002(Lcom/android/server/VibratorService;Lcom/samsung/android/server/audio/GoodCatchManager;)Lcom/samsung/android/server/audio/GoodCatchManager;

    goto :goto_9a

    .line 2874
    :cond_5f
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2875
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    move-result-object v2

    # setter for: Lcom/android/server/VibratorService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$5102(Lcom/android/server/VibratorService;Lcom/samsung/android/server/vibrator/VibratorHqmHelper;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 2876
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$5100(Lcom/android/server/VibratorService;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->startLogging(Landroid/content/Context;)V

    goto :goto_9a

    .line 2877
    :cond_84
    nop

    .line 2878
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 2879
    const-string v1, "com.sec.media.action.VIBRTOR_LOGGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2880
    :cond_95
    iget-object v1, p0, Lcom/android/server/VibratorService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->sendDataToHqm()V
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$5200(Lcom/android/server/VibratorService;)V

    .line 2882
    :cond_9a
    :goto_9a
    return-void
.end method

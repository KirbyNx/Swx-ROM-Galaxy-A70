.class final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p2, "x1"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 248
    .local v1, "time":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EyeComfortSolutionService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 251
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setting_is_changed()V
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 252
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$200(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 253
    return-void

    .line 255
    :cond_31
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v3, :cond_8e

    .line 256
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 v6, 0x1

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z
    invoke-static {v3, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$302(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)Z

    .line 257
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 258
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 259
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I
    invoke-static {v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$800(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v1

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 261
    :cond_73
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 262
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I
    invoke-static {v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v6, v1

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 263
    return-void

    .line 265
    :cond_8e
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 266
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 v6, 0x0

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z
    invoke-static {v3, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$302(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)Z

    .line 267
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 268
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 269
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 270
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessage(I)Z

    .line 272
    :cond_d0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 273
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 274
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessage(I)Z

    .line 276
    return-void

    .line 278
    :cond_ed
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 279
    return-void

    .line 281
    :cond_f6
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_112

    .line 282
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 283
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessage(I)Z

    .line 284
    return-void

    .line 286
    :cond_112
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 287
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 288
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessage(I)Z

    .line 289
    return-void

    .line 291
    :cond_12d
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 292
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 293
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessage(I)Z

    .line 294
    return-void

    .line 296
    :cond_148
    const-string v3, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 298
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "HqmManagerService"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SemHqmManager;

    # setter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;
    invoke-static {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1002(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;

    .line 300
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1000(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/os/SemHqmManager;

    move-result-object v3

    if-eqz v3, :cond_16e

    .line 301
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sendBigDatatoHQM()V
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1200(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 303
    :cond_16e
    return-void

    .line 305
    :cond_16f
    return-void
.end method

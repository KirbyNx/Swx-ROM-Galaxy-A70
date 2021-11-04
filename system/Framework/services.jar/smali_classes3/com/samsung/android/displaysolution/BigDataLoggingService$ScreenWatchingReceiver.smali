.class final Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/BigDataLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/displaysolution/BigDataLoggingService;
    .param p2, "x1"    # Lcom/samsung/android/displaysolution/BigDataLoggingService$1;

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BigDataLoggingService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 106
    const-string v1, "ACTION_BOOT_COMPLETED"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_boot_completed_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$100(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    .line 108
    return-void

    .line 110
    :cond_2d
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 111
    const-string v1, "ACTION_SCREEN_ON"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_on_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$200(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    .line 113
    return-void

    .line 115
    :cond_40
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 116
    const-string v1, "ACTION_SCREEN_OFF"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_off_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$300(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    .line 118
    return-void

    .line 120
    :cond_53
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 121
    const-string v1, "ACTION_USER_PRESENT"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    # invokes: Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_user_present_intent()V
    invoke-static {v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->access$400(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    .line 123
    return-void

    .line 125
    :cond_66
    return-void
.end method

.class Lcom/android/server/ReactiveService$1;
.super Landroid/content/BroadcastReceiver;
.source "ReactiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ReactiveService;


# direct methods
.method constructor <init>(Lcom/android/server/ReactiveService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ReactiveService;

    .line 175
    iput-object p1, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 178
    const-string/jumbo v0, "secure_frp_mode"

    const-string v1, "ReactiveService"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 180
    const-string/jumbo v3, "persist.sys.setupwizard"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "prop_result":Ljava/lang/String;
    const-string v4, "FINISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 183
    :try_start_20
    # getter for: Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ReactiveService;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6e

    .line 184
    # getter for: Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ReactiveService;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    const-string v0, "Secure FRP mode is disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/samsung/android/jdsms/Sender;

    invoke-direct {v0, p1}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ReactiveService;->mDsmsSender:Lcom/samsung/android/jdsms/Sender;

    .line 188
    sget-object v0, Lcom/android/server/ReactiveService;->mDsmsSender:Lcom/samsung/android/jdsms/Sender;
    :try_end_49
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_20 .. :try_end_49} :catch_6f

    if-eqz v0, :cond_6e

    .line 190
    :try_start_4b
    sget-object v0, Lcom/android/server/ReactiveService;->mDsmsSender:Lcom/samsung/android/jdsms/Sender;

    const-string v4, "FRP1"

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;J)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_55
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4b .. :try_end_54} :catch_6f

    .line 193
    goto :goto_6e

    .line 191
    :catch_55
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DSMS exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_56 .. :try_end_6e} :catch_6f

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    goto :goto_75

    .line 196
    :catch_6f
    move-exception v0

    .line 197
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SECURE_FRP_MODE not found"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v3    # "prop_result":Ljava/lang/String;
    :cond_75
    :goto_75
    return-void
.end method

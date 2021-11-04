.class Lcom/android/server/TimaService$TimaServiceHandler;
.super Landroid/os/Handler;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimaServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 221
    iput-object p1, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimaServiceHandler.handleMessage what ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    goto :goto_88

    .line 235
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v2

    if-eqz v2, :cond_8f

    if-nez v0, :cond_2d

    goto :goto_8f

    .line 241
    :cond_2d
    const-string v2, "MSG="

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_89

    .line 247
    :cond_3c
    sget-boolean v3, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v3, :cond_46

    .line 248
    const-string v3, "TimaServiceHandler(): iBootCompleted==false"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 253
    :cond_46
    :try_start_46
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 254
    .local v3, "notification":Landroid/app/Notification;
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 255
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 256
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x4000000

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 258
    .local v5, "pi":Landroid/app/PendingIntent;
    const v6, 0x1080027

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 259
    iget-object v6, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "TIMA security measurement"

    invoke-virtual {v3, v6, v7, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 260
    iget-object v6, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    # getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x1b58

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_80} :catch_81

    .line 266
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pi":Landroid/app/PendingIntent;
    goto :goto_88

    .line 263
    :catch_81
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception in handleMessage"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 272
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "text":Ljava/lang/String;
    :goto_88
    return-void

    .line 243
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_89
    :goto_89
    const-string v3, "Invalid TIMA message!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 237
    .end local v2    # "text":Ljava/lang/String;
    :cond_8f
    :goto_8f
    const-string v2, "Notification or Bundle is not ready!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

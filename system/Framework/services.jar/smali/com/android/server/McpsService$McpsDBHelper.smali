.class Lcom/android/server/McpsService$McpsDBHelper;
.super Landroid/database/ContentObserver;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/McpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "McpsDBHelper"
.end annotation


# instance fields
.field private final KEY_MCPS_ENABLE:Ljava/lang/String;

.field private final SETTING_MCPS_NONE:I

.field private final SETTING_MCPS_OFF:I

.field private final SETTING_MCPS_ON:I

.field final synthetic this$0:Lcom/android/server/McpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/McpsService;Landroid/os/Handler;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/McpsService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 422
    iput-object p1, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    .line 423
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 416
    const-string/jumbo v0, "multicore_packet_scheduler"

    iput-object v0, p0, Lcom/android/server/McpsService$McpsDBHelper;->KEY_MCPS_ENABLE:Ljava/lang/String;

    .line 418
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/McpsService$McpsDBHelper;->SETTING_MCPS_NONE:I

    .line 419
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/McpsService$McpsDBHelper;->SETTING_MCPS_ON:I

    .line 420
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/McpsService$McpsDBHelper;->SETTING_MCPS_OFF:I

    .line 425
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 426
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 427
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    return-void
.end method


# virtual methods
.method public isOnMcps()Z
    .registers 5

    .line 436
    iget-object v0, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    invoke-virtual {v0}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multicore_packet_scheduler"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 437
    .local v0, "val":I
    const/4 v3, 0x1

    if-ne v0, v2, :cond_28

    invoke-static {}, Lcom/android/server/McpsService;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 438
    iget-object v2, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    invoke-virtual {v2}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    :cond_28
    if-ne v0, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    return v3
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/McpsService$McpsDBHelper;->onChange(ZLandroid/net/Uri;)V

    .line 447
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 451
    const-string v0, "MCPS-Service"

    const-string v1, "MCPS DB UPDATED CALL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    # invokes: Lcom/android/server/McpsService;->updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V
    invoke-static {v0, p0}, Lcom/android/server/McpsService;->access$600(Lcom/android/server/McpsService;Lcom/android/server/McpsService$McpsDBHelper;)V

    .line 453
    return-void
.end method

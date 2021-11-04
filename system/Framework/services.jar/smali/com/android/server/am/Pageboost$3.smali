.class Lcom/android/server/am/Pageboost$3;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Pageboost;->staticInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 369
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v0

    if-nez v0, :cond_7

    .line 370
    return-void

    .line 373
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 377
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_3b

    .line 378
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x7

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v4, v3, v2}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    goto :goto_3b

    .line 381
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_23
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 382
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 383
    .restart local v1    # "uri":Landroid/net/Uri;
    if-eqz v1, :cond_3c

    .line 384
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 385
    .restart local v3    # "packageName":Ljava/lang/String;
    const/16 v4, 0x8

    # invokes: Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V
    invoke-static {v4, v3, v2}, Lcom/android/server/am/Pageboost;->access$600(ILjava/lang/Object;I)V

    goto :goto_3c

    .line 381
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3b
    :goto_3b
    nop

    .line 388
    :cond_3c
    :goto_3c
    return-void
.end method

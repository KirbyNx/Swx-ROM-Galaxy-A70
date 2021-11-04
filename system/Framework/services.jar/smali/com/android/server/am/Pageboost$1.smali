.class Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "sec.app.policy.UPDATE.heimdall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 228
    return-void

    .line 230
    :cond_e
    const-string/jumbo v1, "ro.product.device"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "productDevice":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 232
    return-void

    .line 234
    :cond_22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/am/Pageboost;->POLICY_ITEM_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$000()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 235
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_35

    .line 236
    return-void

    .line 238
    :cond_35
    :goto_35
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 241
    const/4 v3, 0x1

    :try_start_3c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "device":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_46

    .line 246
    .local v4, "value":Ljava/lang/String;
    goto :goto_4b

    .line 243
    .end local v3    # "device":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_46
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 245
    .local v4, "device":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v3, v4

    move-object v4, v5

    .line 248
    .local v3, "device":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :goto_4b
    if-eqz v3, :cond_35

    if-nez v4, :cond_50

    .line 249
    goto :goto_35

    .line 251
    :cond_50
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 252
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 253
    :cond_66
    const-string/jumbo v5, "persist.sys.heimdalld.disable"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 256
    .end local v3    # "device":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_6d
    goto :goto_35

    .line 257
    :cond_6e
    :goto_6e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 258
    return-void
.end method

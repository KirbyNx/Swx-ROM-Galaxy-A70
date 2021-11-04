.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 329
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 332
    const-string/jumbo v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 333
    .local v0, "subscriptionId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 334
    .local v1, "currSlotId":I
    if-eqz v1, :cond_11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_62

    .line 335
    :cond_11
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v2

    .line 337
    .local v2, "allow":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 339
    .local v3, "token":J
    const-string v5, "PhoneRestrictionPolicy"

    if-nez v2, :cond_42

    .line 340
    const/4 v6, 0x0

    .line 341
    .local v6, "semGetWifiApState":I
    const/4 v7, 0x0

    .line 342
    .local v7, "softApConfiguration":Landroid/net/wifi/SoftApConfiguration;
    :try_start_21
    const-string/jumbo v8, "sem_wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/wifi/SemWifiManager;

    .line 343
    .local v8, "swm":Lcom/samsung/android/wifi/SemWifiManager;
    if-eqz v8, :cond_3d

    .line 344
    invoke-virtual {v8}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v9

    move v6, v9

    .line 345
    const/16 v9, 0xd

    if-eq v6, v9, :cond_39

    const/16 v9, 0xc

    if-ne v6, v9, :cond_42

    .line 347
    :cond_39
    invoke-virtual {v8, v7, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_42

    .line 349
    :cond_3d
    const-string v9, "Mobile Hotspot cannot be disabled"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v6    # "semGetWifiApState":I
    .end local v7    # "softApConfiguration":Landroid/net/wifi/SoftApConfiguration;
    .end local v8    # "swm":Lcom/samsung/android/wifi/SemWifiManager;
    :cond_42
    :goto_42
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v6

    .line 353
    .local v6, "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V

    .line 354
    invoke-virtual {v6, v7, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_53} :catch_56
    .catchall {:try_start_21 .. :try_end_53} :catchall_54

    .line 358
    .end local v6    # "mSystemUIMonitor":Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    goto :goto_5e

    :catchall_54
    move-exception v5

    goto :goto_63

    .line 355
    :catch_56
    move-exception v6

    .line 356
    .local v6, "e":Ljava/lang/Exception;
    :try_start_57
    const-string/jumbo v7, "setCellularDataAllowed failed "

    invoke-static {v5, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_54

    .line 358
    nop

    .end local v6    # "e":Ljava/lang/Exception;
    :goto_5e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    nop

    .line 361
    .end local v2    # "allow":Z
    .end local v3    # "token":J
    :cond_62
    return-void

    .line 358
    .restart local v2    # "allow":Z
    .restart local v3    # "token":J
    :goto_63
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    throw v5
.end method

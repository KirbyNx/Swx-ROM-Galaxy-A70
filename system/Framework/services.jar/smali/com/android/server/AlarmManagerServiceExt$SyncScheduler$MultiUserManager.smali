.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiUserManager"
.end annotation


# instance fields
.field private final DELAY_TIME_FOR_BOOTINIT:I

.field private final DELAY_TIME_FOR_USERINIT:I

.field private final multiUserfilter:Landroid/content/IntentFilter;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .line 3648
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3643
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->DELAY_TIME_FOR_BOOTINIT:I

    .line 3644
    const p1, 0xea60

    iput p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->DELAY_TIME_FOR_USERINIT:I

    .line 3646
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    .line 3649
    invoke-virtual {p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initMultiUser(Landroid/content/Context;)V

    .line 3651
    iget-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3652
    iget-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3653
    iget-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3654
    return-void
.end method

.method private initInstalledPackages(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 3672
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(Landroid/os/UserHandle;I)V

    .line 3673
    return-void
.end method

.method private initInstalledPackages(Landroid/os/UserHandle;I)V
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "delayedMillis"    # I

    .line 3676
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackagesAsUser(II)V

    .line 3677
    return-void
.end method

.method private removeInstalledPackages(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 3680
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->removeInstalledPackageAsUser(I)V

    .line 3681
    return-void
.end method


# virtual methods
.method public initInstalledPackagesAsUser(II)V
    .registers 7
    .param p1, "userid"    # I
    .param p2, "delayedMillis"    # I

    .line 3684
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 3685
    .local v0, "nHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 3707
    .local v1, "res":Z
    return-void
.end method

.method public initMultiUser(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 3657
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3659
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 3660
    .local v1, "usrs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3662
    .local v3, "usr":Landroid/content/pm/UserInfo;
    :try_start_1e
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 3663
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(Landroid/os/UserHandle;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    .line 3666
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    goto :goto_30

    .line 3664
    :catch_26
    move-exception v4

    .line 3665
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlarmManagerEXT"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    .end local v3    # "usr":Landroid/content/pm/UserInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_30
    goto :goto_12

    .line 3669
    :cond_31
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3729
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3730
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 3731
    return-void

    .line 3733
    :cond_7
    const/4 v1, 0x0

    .line 3734
    .local v1, "user":Landroid/os/UserHandle;
    const/4 v2, -0x1

    .line 3735
    .local v2, "userid":I
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3736
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3737
    return-void

    .line 3738
    :cond_1a
    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3739
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3740
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->removeInstalledPackages(Landroid/os/UserHandle;)V

    goto :goto_45

    .line 3741
    :cond_27
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3742
    const-string v3, "android.intent.extra.USER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 3743
    return-void

    .line 3744
    :cond_38
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/UserHandle;

    .line 3748
    const v3, 0xea60

    invoke-direct {p0, v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(Landroid/os/UserHandle;I)V

    .line 3750
    :cond_45
    :goto_45
    return-void
.end method

.method public removeInstalledPackageAsUser(I)V
    .registers 4
    .param p1, "userid"    # I

    .line 3710
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 3711
    .local v0, "nHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 3724
    .local v1, "res":Z
    return-void
.end method

.class Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final SFINDER_CLS:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 5

    .line 4962
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4968
    const-string/jumbo p1, "{com.android.phone/com.android.phone.UsimDownload}"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    .line 4972
    new-instance p1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SFinderLaunchPolicy$YOq2H8LRz33HYFuYF5oHJHIzWTg;

    invoke-direct {p1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SFinderLaunchPolicy$YOq2H8LRz33HYFuYF5oHJHIzWTg;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    .line 4963
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    .line 4964
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.galaxyfinder"

    const-string v2, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4965
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v0, "callername"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4966
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManagerExt$1;

    .line 4954
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;

    .line 4954
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->launch()V

    return-void
.end method

.method private isDeniedActivity()Z
    .registers 9

    .line 4996
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 4997
    .local v0, "topActivity":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4998
    return v1

    .line 5001
    :cond_c
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 5003
    .local v2, "cmpName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_14
    if-ge v5, v4, :cond_23

    aget-object v6, v3, v5

    .line 5004
    .local v6, "entry":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 5005
    const/4 v1, 0x1

    return v1

    .line 5003
    .end local v6    # "entry":Ljava/lang/String;
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 5009
    :cond_23
    return v1
.end method

.method private isLaunchable()Z
    .registers 4

    .line 5013
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    const/4 v1, 0x0

    const-string v2, "SFinderLaunchPolicy"

    if-nez v0, :cond_10

    .line 5014
    const-string/jumbo v0, "isLaunchable: Boot is not completed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5015
    return v1

    .line 5018
    :cond_10
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->isSFinderActivityAvailable()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5019
    const-string/jumbo v0, "isLaunchable: SFinder activity is not available"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    return v1

    .line 5023
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->isDeniedActivity()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5024
    const-string/jumbo v0, "isLaunchable: It is denied activity"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5025
    return v1

    .line 5028
    :cond_2a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 5029
    const-string/jumbo v0, "isLaunchable: User setup is not completed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5030
    return v1

    .line 5033
    :cond_3b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5034
    const-string/jumbo v0, "isLaunchable: Keyguard is shown"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    return v1

    .line 5038
    :cond_4c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_57

    .line 5039
    const-string/jumbo v0, "isLaunchable: Factory binary"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5040
    return v1

    .line 5043
    :cond_57
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 5044
    const-string/jumbo v0, "isLaunchable: Automatic test mode"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    return v1

    .line 5048
    :cond_68
    const/4 v0, 0x1

    return v0
.end method

.method private isSFinderActivityAvailable()Z
    .registers 5

    .line 4989
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    .line 4990
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 4989
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->semQueryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4992
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    const/4 v3, 0x1

    :cond_1c
    return v3
.end method

.method private launch()V
    .registers 3

    .line 5052
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5053
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5054
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5056
    :cond_18
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PhoneWindowManagerExt$SFinderLaunchPolicy()V
    .registers 6

    .line 4974
    const-string v0, "SFinderLaunchPolicy"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 4976
    .local v1, "topActivity":Landroid/content/ComponentName;
    if-eqz v1, :cond_3c

    .line 4977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLaunchSFinder: top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v3, "componentname"

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4979
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_42

    .line 4981
    :cond_3c
    const-string/jumbo v2, "mLaunchSFinder: Unknown top activity!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    .line 4985
    .end local v1    # "topActivity":Landroid/content/ComponentName;
    :goto_42
    goto :goto_59

    .line 4983
    :catch_43
    move-exception v1

    .line 4984
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLaunchSFinder: Cannot launch activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

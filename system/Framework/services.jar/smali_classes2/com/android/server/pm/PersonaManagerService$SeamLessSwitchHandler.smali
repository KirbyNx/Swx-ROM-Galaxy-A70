.class Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeamLessSwitchHandler"
.end annotation


# static fields
.field private static final AFTER_KEYGUARD_GONE:Ljava/lang/String; = "afterKeyguardGone"

.field private static final DISMISS_IF_INSECURE:Ljava/lang/String; = "dismissIfInsecure"

.field private static final EXTRA_KEY:Ljava/lang/String; = "extra"

.field private static final FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final IGNORE_KEYGUARD_STATE:Ljava/lang/String; = "ignoreKeyguardState"

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final SA_ACTION_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field public static final SA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final SA_TYPE_VALUE_EV:Ljava/lang/String; = "ev"

.field private static final SEAMLESS_TAG:Ljava/lang/String; = "SeamLessSwitchHandler"

.field private static final SECUREFOLDER_FOLDERCONTAINER:Ljava/lang/String; = "com.samsung.knox.securefolder.presentation.foldercontainer.view.FolderContainer"

.field private static final SECUREFOLDER_PACKAGE:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SF_TRACKING_ID:Ljava/lang/String; = "493-399-9953101"

.field private static final TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private LAUNCHSF_HOME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final am:Landroid/app/ActivityManager;

.field private final c:Landroid/content/Context;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mUserManager:Landroid/os/UserManager;

.field private final pm:Landroid/content/pm/PackageManager;

.field private final semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final statusBarManager:Landroid/app/SemStatusBarManager;

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "p"    # Lcom/android/server/pm/PackageManagerService;

    .line 6586
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6580
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    .line 6583
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "com.android.settings"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->LAUNCHSF_HOME_LIST:Ljava/util/List;

    .line 6587
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 6588
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 6589
    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6590
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 6591
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 6592
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    .line 6593
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const-class v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SemStatusBarManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    .line 6594
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 6595
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6596
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6597
    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;

    .line 6560
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    return-object v0
.end method

.method private getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6871
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6872
    .local v0, "intentToResolve":Landroid/content/Intent;
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6873
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6874
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 6877
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2f

    .line 6879
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 6880
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6881
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6882
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 6884
    :cond_2f
    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_38

    goto :goto_5a

    .line 6887
    :cond_38
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6888
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6889
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 6890
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6889
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6891
    return-object v1

    .line 6885
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5a
    :goto_5a
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLaunchUserId(I)I
    .registers 9
    .param p1, "taskUserId"    # I

    .line 6788
    const/4 v0, 0x0

    .line 6789
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    .line 6790
    .local v1, "secureFolderId":I
    const/4 v2, 0x0

    .line 6791
    .local v2, "secureFolderExists":Z
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    .line 6792
    .local v3, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6793
    .local v5, "knoxId":I
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 6794
    move v1, v5

    .line 6795
    const/4 v2, 0x1

    .line 6797
    .end local v5    # "knoxId":I
    :cond_26
    goto :goto_e

    .line 6798
    :cond_27
    if-nez p1, :cond_2a

    .line 6799
    move v0, v1

    .line 6801
    :cond_2a
    if-eqz v2, :cond_2e

    move v4, v0

    goto :goto_2f

    :cond_2e
    const/4 v4, -0x1

    :goto_2f
    return v4
.end method

.method private hideNotificationPanel()V
    .registers 3

    .line 6684
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6685
    const-string v0, "SeamLessSwitchHandler"

    const-string v1, "Collapsing notification panel before quick switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 6690
    :cond_18
    goto :goto_1d

    .line 6688
    :catch_19
    move-exception v0

    .line 6689
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6691
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method private isAppLaunchable(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6837
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6838
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6839
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 6844
    .local v1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    return v2
.end method

.method private isCameraRunning()Z
    .registers 3

    .line 6867
    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDeviceInLandscapeMode()Z
    .registers 3

    .line 6758
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private isPackageEnabled(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 6805
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6807
    .local v0, "ident":J
    :try_start_4
    const-string v2, "com.samsung.knox.securefolder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_36

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    if-nez p2, :cond_14

    .line 6808
    nop

    .line 6817
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6808
    return v3

    .line 6809
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->LAUNCHSF_HOME_LIST:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_36

    if-eqz v2, :cond_21

    .line 6810
    nop

    .line 6817
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6810
    return v3

    .line 6811
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/high16 v4, 0xc0000

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 6815
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_32

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_36

    if-eqz v4, :cond_32

    const/4 v3, 0x1

    .line 6817
    :cond_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6815
    return v3

    .line 6817
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6818
    throw v2
.end method

.method private isPopupWindowRunning()Z
    .registers 5

    .line 6823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 6824
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6825
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_24

    if-eqz v3, :cond_22

    .line 6826
    const/4 v1, 0x1

    return v1

    .line 6828
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_22
    goto :goto_c

    .line 6831
    .end local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_23
    goto :goto_28

    .line 6829
    :catch_24
    move-exception v0

    .line 6830
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6832
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    const/4 v0, 0x0

    return v0
.end method

.method private isSeamLessSwitchSupported(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "topComponent"    # Landroid/content/ComponentName;
    .param p3, "launchUserId"    # I

    .line 6695
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6c

    .line 6697
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 6698
    return v2

    .line 6699
    :cond_20
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v0, :cond_6b

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isPopupWindowRunning()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_6b

    .line 6701
    :cond_31
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 6702
    return v2

    .line 6703
    :cond_3a
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->getLaunchUserId(I)I

    move-result v1

    if-nez v1, :cond_4a

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 6704
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_57

    :cond_4a
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 6705
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->getLaunchUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_57

    .line 6706
    return v2

    .line 6707
    :cond_57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_6d

    if-nez v1, :cond_6a

    .line 6708
    :cond_69
    return v2

    .line 6712
    :cond_6a
    goto :goto_71

    .line 6700
    :cond_6b
    :goto_6b
    return v2

    .line 6696
    :cond_6c
    :goto_6c
    return v2

    .line 6710
    :catch_6d
    move-exception v1

    .line 6711
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6713
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_71
    return v0
.end method

.method private isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "topComponent"    # Landroid/content/ComponentName;
    .param p3, "launchUserId"    # I

    .line 6850
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v0

    if-nez v0, :cond_37

    .line 6851
    :cond_e
    const-string v0, "com.android.settings"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6852
    const-string v0, "activity_task"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6853
    .local v0, "ams":Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PersonaActivityHelper;->isQuickSwitchExceptionalCase(I)Z

    move-result v1

    .line 6854
    .local v1, "isSettingsExceptionCase":Z
    if-eqz v1, :cond_37

    .line 6855
    const-string v2, "SeamLessSwitchHandler"

    const-string v3, "Exceptional case quick switch! securefolder keyguard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_38

    .line 6856
    const/4 v2, 0x1

    return v2

    .line 6862
    .end local v0    # "ams":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v1    # "isSettingsExceptionCase":Z
    :cond_37
    goto :goto_3c

    .line 6860
    :catch_38
    move-exception v0

    .line 6861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6863
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3c
    const/4 v0, 0x0

    return v0
.end method

.method private launchFolderContainerOrCameraAfterUnlock(Landroid/content/ComponentName;)V
    .registers 15
    .param p1, "topComponent"    # Landroid/content/ComponentName;

    .line 6640
    const-string v0, "com.samsung.knox.securefolder"

    const-string v1, "SeamLessSwitchHandler"

    const/4 v2, -0x1

    .line 6641
    .local v2, "launchUserId":I
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    .line 6642
    .local v3, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 6643
    .local v6, "knoxId":I
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 6644
    move v2, v6

    .line 6646
    .end local v6    # "knoxId":I
    :cond_27
    goto :goto_10

    .line 6647
    :cond_28
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2c

    return-void

    .line 6649
    :cond_2c
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6650
    .local v5, "folderContainerorCameraIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isCameraRunning()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 6651
    const-string v0, "Camera is Running on Lock Screen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6652
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    move-object v5, v0

    .line 6653
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6654
    const/high16 v0, 0x200000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6655
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/server/pm/PersonaManagerService;->packageExtraForSALog:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7e

    .line 6657
    :cond_5a
    const-string v6, "com.samsung.knox.securefolder.presentation.foldercontainer.view.FolderContainer"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6658
    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6659
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v6

    if-nez v6, :cond_73

    .line 6660
    const-string/jumbo v6, "quick_switch"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6662
    :cond_73
    const v6, 0x8000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6663
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->packageExtraForSALog:Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6665
    :goto_7e
    const v0, 0x10004000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6667
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6668
    .local v0, "filterIntent":Landroid/content/Intent;
    const-string v6, "afterKeyguardGone"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6669
    const-string/jumbo v6, "ignoreKeyguardState"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6670
    const-string v6, "dismissIfInsecure"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6671
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v9, v5

    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 6675
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6, v4, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ae} :catch_af

    .line 6679
    .end local v0    # "filterIntent":Landroid/content/Intent;
    .end local v2    # "launchUserId":I
    .end local v3    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "folderContainerorCameraIntent":Landroid/content/Intent;
    goto :goto_b8

    .line 6676
    :catch_af
    move-exception v0

    .line 6677
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception in setting pending intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6678
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6680
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b8
    return-void
.end method

.method private launchFolderContainerOrHome(IZ)V
    .registers 10
    .param p1, "launchUserId"    # I
    .param p2, "forceLaunchHome"    # Z

    .line 6763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6764
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x10000

    const/high16 v4, 0x10000000

    if-eqz v1, :cond_4b

    if-nez p2, :cond_4b

    .line 6765
    const-string v1, "com.samsung.knox.securefolder"

    const-string v5, "com.samsung.knox.securefolder.presentation.foldercontainer.view.FolderContainer"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6766
    const-string/jumbo v5, "userId"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6767
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 6768
    const-string/jumbo v5, "quick_switch"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6770
    :cond_2f
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6771
    const v2, 0xc000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6772
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6773
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6774
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->packageExtraForSALog:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_89

    .line 6776
    :cond_4b
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6777
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6778
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 6779
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_61

    return-void

    .line 6780
    :cond_61
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6781
    const-string v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6782
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6783
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->packageExtraForSALog:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6785
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_89
    return-void
.end method

.method private printToastDelayed(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "freshLaunch"    # Z

    .line 6747
    move v0, p1

    .line 6748
    .local v0, "mUserId":I
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PersonaManagerService$SeamLessSwitchHandler$yWTnL2FwMxJJ9zx7YsgUI3t7PWc;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/-$$Lambda$PersonaManagerService$SeamLessSwitchHandler$yWTnL2FwMxJJ9zx7YsgUI3t7PWc;-><init>(Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;I)V

    .line 6754
    if-eqz p2, :cond_14

    const-wide/16 v3, 0x1f4

    goto :goto_16

    :cond_14
    const-wide/16 v3, 0x12c

    .line 6748
    :goto_16
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6755
    return-void
.end method

.method private startActivityForSecureFolderUser(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "launchUserId"    # I

    .line 6718
    const-string v0, "SeamLessSwitchHandler"

    if-nez p1, :cond_5

    .line 6719
    return-void

    .line 6721
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6722
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    .line 6723
    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 6724
    .local v2, "newLaunchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_3c

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isAppLaunchable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_3c

    .line 6730
    :cond_1d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6731
    const v3, 0x10204000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6734
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6735
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->printToastDelayed(IZ)V

    .line 6736
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->packageExtraForSALog:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6737
    nop

    .end local v2    # "newLaunchIntent":Landroid/content/Intent;
    goto :goto_57

    .line 6725
    .restart local v2    # "newLaunchIntent":Landroid/content/Intent;
    :cond_3c
    :goto_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No launchable component for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6726
    invoke-direct {p0, p2, v3}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->launchFolderContainerOrHome(IZ)V

    .line 6727
    return-void

    .line 6738
    .end local v2    # "newLaunchIntent":Landroid/content/Intent;
    :cond_54
    invoke-direct {p0, p2, v3}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->launchFolderContainerOrHome(IZ)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_58

    .line 6743
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_57
    goto :goto_61

    .line 6740
    :catch_58
    move-exception v1

    .line 6741
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception in securefolder quick switch"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6742
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6744
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_61
    return-void
.end method


# virtual methods
.method public insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 6904
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;-><init>(Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6932
    return-void
.end method

.method public synthetic lambda$printToastDelayed$0$PersonaManagerService$SeamLessSwitchHandler(I)V
    .registers 7
    .param p1, "mUserId"    # I

    .line 6750
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 6751
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const v1, 0x1040b8b

    .line 6752
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6751
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 6752
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6754
    :cond_32
    return-void
.end method

.method public launchSeamLessForSF()V
    .registers 9

    .line 6600
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->packageExtraForSALog:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6601
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 6602
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_b1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_b1

    .line 6604
    :cond_17
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6605
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6606
    .local v3, "topComponent":Landroid/content/ComponentName;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 6608
    .local v4, "baseComponent":Landroid/content/ComponentName;
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->getLaunchUserId(I)I

    move-result v5

    .line 6610
    .local v5, "launchUserId":I
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    const-string v7, "SeamLessSwitchHandler"

    if-nez v6, :cond_4b

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4b

    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 6611
    :cond_45
    const-string v1, "Quick Switch abort! User is not running"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    return-void

    .line 6615
    :cond_4b
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6616
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    if-nez v6, :cond_5f

    .line 6617
    const-string v1, "Quick Switch abort! User Lock type is not set"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6618
    return-void

    .line 6621
    :cond_5f
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isSeamLessSwitchSupported(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 6622
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;

    const v7, 0x1040b8a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6623
    return-void

    .line 6626
    :cond_7a
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 6627
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_95

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_95

    .line 6628
    invoke-direct {p0, v3}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->launchFolderContainerOrCameraAfterUnlock(Landroid/content/ComponentName;)V

    .line 6630
    :cond_95
    return-void

    .line 6633
    :cond_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Quick Switch is triggered for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6634
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->hideNotificationPanel()V

    .line 6635
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->startActivityForSecureFolderUser(Landroid/content/ComponentName;I)V

    .line 6636
    return-void

    .line 6603
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "topComponent":Landroid/content/ComponentName;
    .end local v4    # "baseComponent":Landroid/content/ComponentName;
    .end local v5    # "launchUserId":I
    :cond_b1
    :goto_b1
    return-void
.end method

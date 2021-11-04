.class public Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
.super Lcom/samsung/android/privilege/IPrivilegeManager$Stub;
.source "SemPrivilegeManagerServiceImpl.java"


# static fields
.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final ENG:Z

.field private static final INVALID_DISPLAY:I = -0x1

.field private static final POLICY_ITEM_URI:Landroid/net/Uri;

.field private static final PRIVILEGE_DEFAULT_ALLOWLIST_ENTRY:I = 0x3

.field private static final PRIVILEGE_INJECT_INPUT:Ljava/lang/String; = "inject_input"

.field private static final PRIVILEGE_SCPM_BROADCAST_MESSAGE:Ljava/lang/String; = "sec.app.policy.UPDATE.SepUnionPrivilegePolicy"

.field private static final PRIVILEGE_SCPM_POLICY_NAME:Ljava/lang/String; = "SepUnionPrivilegePolicy"

.field private static final PRIVILEGE_START_ACTIVITY:Ljava/lang/String; = "start_activity"

.field private static final PRIVILEGE_THREAD_SCHEDULE:Ljava/lang/String; = "thread_schedule"

.field private static final RELEASE_KEY:Landroid/content/pm/Signature;

.field private static final TAG:Ljava/lang/String;

.field private static final VIRTUAL_DISPLAY:Ljava/lang/String; = "virtual_display"

.field private static mPrivilegeApplication:Lcom/android/server/privilege/PrivilegeApplication;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/privilege/PrivilegePackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-class v0, Lcom/android/server/privilege/SemPrivilegeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->ENG:Z

    .line 39
    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->AUTHORITY_URI:Landroid/net/Uri;

    .line 40
    const-string/jumbo v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    const-string v1, "SepUnionPrivilegePolicy"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->RELEASE_KEY:Landroid/content/pm/Signature;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPrivilegeApplication:Lcom/android/server/privilege/PrivilegeApplication;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/privilege/IPrivilegeManager$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    .line 72
    new-instance v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl$1;-><init>(Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "sec.app.policy.UPDATE.SepUnionPrivilegePolicy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    invoke-static {p1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->setPrivilegeApplication(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updatePrivilegePackages(Landroid/content/Context;)V

    return-void
.end method

.method private addAllowlist(Ljava/lang/String;Lcom/android/server/privilege/PrivilegePackage;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "privilegePackage"    # Lcom/android/server/privilege/PrivilegePackage;

    .line 152
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/privilege/PrivilegePackage;>;"
    if-nez v0, :cond_16

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 155
    iget-object v1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_16
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method private checkAllowedPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/privilege/PrivilegePackage;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 354
    return-object v1

    .line 356
    :cond_a
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/privilege/PrivilegePackage;

    .line 357
    .local v2, "privilegePackage":Lcom/android/server/privilege/PrivilegePackage;
    invoke-virtual {v2, p2}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 358
    goto :goto_16

    .line 360
    :cond_29
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 361
    goto :goto_16

    .line 363
    :cond_32
    invoke-static {v2}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->checkCarrier(Lcom/android/server/privilege/PrivilegePackage;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 364
    goto :goto_16

    .line 366
    :cond_39
    return-object v2

    .line 369
    .end local v2    # "privilegePackage":Lcom/android/server/privilege/PrivilegePackage;
    :cond_3a
    return-object v1
.end method

.method private checkSignature(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 376
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 377
    .local v2, "signatures":[Landroid/content/pm/Signature;
    if-nez v2, :cond_16

    .line 378
    return v0

    .line 380
    :cond_16
    sget-boolean v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->ENG:Z

    if-eqz v3, :cond_36

    .line 381
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_36
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    .line 386
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->RELEASE_KEY:Landroid/content/pm/Signature;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_42} :catch_44

    return v0

    .line 390
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    :cond_43
    goto :goto_62

    .line 388
    :catch_44
    move-exception v1

    .line 389
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_62
    return v0
.end method

.method private checkValidation(ILjava/lang/String;)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 298
    sget-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SYSTEM_UID is allowed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1

    .line 302
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->getPackageNameByPID(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->checkAllowedPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/privilege/PrivilegePackage;

    move-result-object v2

    .line 306
    .local v2, "privilegePackage":Lcom/android/server/privilege/PrivilegePackage;
    if-nez v2, :cond_4b

    .line 307
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v1, 0x0

    return v1

    .line 312
    :cond_4b
    invoke-direct {p0, v0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->checkSignature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 313
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " signature check is failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-boolean v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->ENG:Z

    return v1

    .line 318
    :cond_70
    return v1
.end method

.method private getPackageNameByPID(I)Ljava/lang/String;
    .registers 12
    .param p1, "pid"    # I

    .line 322
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 323
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 324
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 327
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v2, ""

    if-nez v1, :cond_1a

    .line 328
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "Error! getRunningAppProcesses() return null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-object v2

    .line 332
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 334
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v5, p1, :cond_2f

    .line 335
    goto :goto_1e

    .line 336
    :cond_2f
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 338
    .local v5, "packageName":Ljava/lang/String;
    :try_start_31
    iget-object v6, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 339
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 340
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v8, v9, :cond_4e

    .line 341
    sget-object v8, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v9, "NOT Allowed : pkg does not match uid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_4d} :catch_4f

    .line 342
    return-object v2

    .line 344
    :cond_4e
    return-object v5

    .line 345
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_4f
    move-exception v6

    .line 346
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1e

    .line 349
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_76
    return-object v2
.end method

.method private static declared-synchronized getPrivilegeApplication()Lcom/android/server/privilege/PrivilegeApplication;
    .registers 2

    const-class v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    monitor-enter v0

    .line 90
    :try_start_3
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPrivilegeApplication:Lcom/android/server/privilege/PrivilegeApplication;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isPrivilegeApplication(ILjava/lang/String;)Z
    .registers 8
    .param p0, "uid"    # I
    .param p1, "operation"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->getPrivilegeApplication()Lcom/android/server/privilege/PrivilegeApplication;

    move-result-object v1

    .line 105
    .local v1, "privilegeApplication":Lcom/android/server/privilege/PrivilegeApplication;
    if-nez v1, :cond_f

    .line 106
    sget-object v2, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "failed to get PrivilegeApplication"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v0

    .line 109
    :cond_f
    invoke-virtual {v1, p0, p1}, Lcom/android/server/privilege/PrivilegeApplication;->generateKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/privilege/PrivilegeApplication;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 111
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPrivilegeApplication uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0
.end method

.method private loadDefaultPrivilege()V
    .registers 7

    .line 57
    sget-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "load default privilege"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/android/server/privilege/PrivilegePackage;

    const-string v1, "ai.nreal.nebula.service"

    const-string v2, "LGT#LUC#ATT"

    const-string v3, "SM-G981N#SM-G986N#SM-G988N#SM-N981N#SM-N986N#SM-N981U#SM-N986U#SM-F916N#SM-F916U#SM-G991N#SM-G996N#SM-G998N#SM-F926N#SM-G990N"

    const-string/jumbo v4, "virtual_display#thread_schedule#start_activity#inject_input"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/privilege/PrivilegePackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->addAllowlist(Ljava/lang/String;Lcom/android/server/privilege/PrivilegePackage;)V

    .line 62
    new-instance v0, Lcom/android/server/privilege/PrivilegePackage;

    const-string v1, "com.pvr.pvrservice"

    const-string v2, "LGT#LUC"

    const-string v3, "SM-G981N#SM-G986N#SM-G988N#SM-N981N#SM-N986N#SM-F916N#SM-G991N#SM-G996N#SM-G998N#SM-F926N#SM-G990N"

    const-string/jumbo v5, "thread_schedule"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/privilege/PrivilegePackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->addAllowlist(Ljava/lang/String;Lcom/android/server/privilege/PrivilegePackage;)V

    .line 66
    new-instance v0, Lcom/android/server/privilege/PrivilegePackage;

    const-string v1, "ai.nreal.nebula.service.jp.ss"

    const-string v2, "KDI"

    const-string v3, "SCG06"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/privilege/PrivilegePackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->addAllowlist(Ljava/lang/String;Lcom/android/server/privilege/PrivilegePackage;)V

    .line 70
    return-void
.end method

.method private static declared-synchronized setPrivilegeApplication(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;

    monitor-enter v0

    .line 86
    :try_start_3
    new-instance v1, Lcom/android/server/privilege/PrivilegeApplication;

    invoke-direct {v1, p0}, Lcom/android/server/privilege/PrivilegeApplication;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPrivilegeApplication:Lcom/android/server/privilege/PrivilegeApplication;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 87
    monitor-exit v0

    return-void

    .line 85
    .end local p0    # "context":Landroid/content/Context;
    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateAllowlistIfRequired()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 162
    return-void

    .line 164
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    .local v0, "id":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updatePrivilegePackages(Landroid/content/Context;)V

    .line 172
    iget-object v2, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 173
    invoke-direct {p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->loadDefaultPrivilege()V
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_22

    .line 175
    :cond_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw v2
.end method

.method private updatePrivilegePackages(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->POLICY_ITEM_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_18

    .line 118
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "It can\'t query the policy URI"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_18
    iget-object v1, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 125
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 128
    const/4 v1, 0x1

    :try_start_24
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "carrier":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "model":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_3d

    .line 139
    .local v5, "operations":Ljava/lang/String;
    goto :goto_48

    .line 133
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "carrier":Ljava/lang/String;
    .end local v4    # "model":Ljava/lang/String;
    .end local v5    # "operations":Ljava/lang/String;
    :catch_3d
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 135
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 136
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 137
    .local v4, "carrier":Ljava/lang/String;
    const/4 v5, 0x0

    .line 138
    .local v5, "model":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 140
    .local v1, "name":Ljava/lang/String;
    .local v2, "type":Ljava/lang/String;
    .local v3, "carrier":Ljava/lang/String;
    .local v4, "model":Ljava/lang/String;
    .local v5, "operations":Ljava/lang/String;
    :goto_48
    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    if-eqz v4, :cond_1d

    if-nez v5, :cond_53

    .line 141
    goto :goto_1d

    .line 144
    :cond_53
    sget-boolean v6, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->ENG:Z

    if-eqz v6, :cond_82

    .line 145
    sget-object v6, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_82
    new-instance v6, Lcom/android/server/privilege/PrivilegePackage;

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/server/privilege/PrivilegePackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v6}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->addAllowlist(Ljava/lang/String;Lcom/android/server/privilege/PrivilegePackage;)V

    .line 147
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "carrier":Ljava/lang/String;
    .end local v4    # "model":Ljava/lang/String;
    .end local v5    # "operations":Ljava/lang/String;
    goto :goto_1d

    .line 148
    :cond_8b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SemPrivilegeManagerService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    return-void

    .line 403
    :cond_2f
    sget-boolean v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->ENG:Z

    if-nez v0, :cond_34

    .line 404
    return-void

    .line 406
    :cond_34
    sget-object v0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "dump privilege packages & applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updateAllowlistIfRequired()V

    .line 411
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 412
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/server/privilege/PrivilegePackage;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 413
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/server/privilege/PrivilegePackage;>;>;"
    goto :goto_48

    .line 415
    :cond_5c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/android/server/privilege/PrivilegeCarrierInfo;

    invoke-direct {v0}, Lcom/android/server/privilege/PrivilegeCarrierInfo;-><init>()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 419
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->getPrivilegeApplication()Lcom/android/server/privilege/PrivilegeApplication;

    move-result-object v0

    .line 420
    .local v0, "privilegeApplication":Lcom/android/server/privilege/PrivilegeApplication;
    if-nez v0, :cond_77

    .line 421
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "failed to get PrivilegeApplication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 424
    :cond_77
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "displayId"    # I

    .line 272
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 274
    .local v0, "pid":I
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectInputEvent from pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updateAllowlistIfRequired()V

    .line 278
    const-string/jumbo v1, "inject_input"

    invoke-direct {p0, v0, v1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->checkValidation(ILjava/lang/String;)Z

    move-result v1

    .line 279
    .local v1, "valid":Z
    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 280
    return v2

    .line 282
    :cond_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 284
    .local v3, "id":J
    :try_start_35
    invoke-virtual {p1, p3}, Landroid/view/InputEvent;->setDisplayId(I)V

    .line 285
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_47
    .catchall {:try_start_35 .. :try_end_3f} :catchall_45

    .line 290
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    nop

    .line 292
    const/4 v2, 0x1

    return v2

    .line 290
    :catchall_45
    move-exception v2

    goto :goto_63

    .line 286
    :catch_47
    move-exception v5

    .line 287
    .local v5, "e":Ljava/lang/Exception;
    :try_start_48
    sget-object v6, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed injectInputEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_45

    .line 288
    nop

    .line 290
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    return v2

    .line 290
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_63
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw v2
.end method

.method public requestPermission(Ljava/lang/String;)Z
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 220
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 222
    .local v1, "uid":I
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->getPrivilegeApplication()Lcom/android/server/privilege/PrivilegeApplication;

    move-result-object v2

    .line 223
    .local v2, "privilegeApplication":Lcom/android/server/privilege/PrivilegeApplication;
    if-nez v2, :cond_17

    .line 224
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "failed to get PrivilegeApplication"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v3, 0x0

    return v3

    .line 227
    :cond_17
    invoke-virtual {v2, v1, p1}, Lcom/android/server/privilege/PrivilegeApplication;->generateKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPermission from pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " string : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v2, v3}, Lcom/android/server/privilege/PrivilegeApplication;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 233
    const/4 v4, 0x1

    return v4

    .line 235
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updateAllowlistIfRequired()V

    .line 237
    invoke-direct {p0, v0, p1}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->checkValidation(ILjava/lang/String;)Z

    move-result v4

    .line 238
    .local v4, "valid":Z
    if-eqz v4, :cond_74

    .line 239
    sget-object v5, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Allow pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " permission : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v2, v3, v0}, Lcom/android/server/privilege/PrivilegeApplication;->put(Ljava/lang/String;I)V

    .line 243
    :cond_74
    return v4
.end method

.method public revokePermission(Ljava/lang/String;)Z
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;

    .line 248
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 249
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 251
    .local v1, "uid":I
    invoke-static {}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->getPrivilegeApplication()Lcom/android/server/privilege/PrivilegeApplication;

    move-result-object v2

    .line 252
    .local v2, "privilegeApplication":Lcom/android/server/privilege/PrivilegeApplication;
    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 253
    sget-object v4, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "failed to get PrivilegeApplication"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v3

    .line 257
    :cond_17
    invoke-virtual {v2, v1, p1}, Lcom/android/server/privilege/PrivilegeApplication;->generateKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "revokePermission from pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " string : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v2, v4}, Lcom/android/server/privilege/PrivilegeApplication;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 263
    return v3

    .line 265
    :cond_49
    invoke-virtual {v2, v4}, Lcom/android/server/privilege/PrivilegeApplication;->remove(Ljava/lang/String;)V

    .line 267
    const/4 v3, 0x1

    return v3
.end method

.method public setThreadSchedulerFifo(II)Z
    .registers 10
    .param p1, "tid"    # I
    .param p2, "priority"    # I

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 183
    .local v0, "callingPid":I
    sget-object v1, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadScheduleFifo pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " priority : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->updateAllowlistIfRequired()V

    .line 188
    const/4 v1, 0x0

    :try_start_2f
    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_32} :catch_85

    .line 192
    nop

    .line 194
    const-string/jumbo v2, "thread_schedule"

    invoke-direct {p0, v0, v2}, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->checkValidation(ILjava/lang/String;)Z

    move-result v2

    .line 195
    .local v2, "valid":Z
    if-nez v2, :cond_3d

    .line 196
    return v1

    .line 200
    :cond_3d
    if-ltz p2, :cond_55

    const/4 v3, 0x4

    if-le p2, v3, :cond_43

    goto :goto_55

    .line 204
    :cond_43
    if-nez p2, :cond_48

    .line 205
    :try_start_45
    invoke-static {p1, v1, p2}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 207
    :cond_48
    if-lez p2, :cond_52

    if-gt p2, v3, :cond_52

    .line 208
    const v3, 0x40000001    # 2.0000002f

    invoke-static {p1, v3, p2}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 213
    :cond_52
    nop

    .line 214
    const/4 v1, 0x1

    return v1

    .line 201
    :cond_55
    :goto_55
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_6c} :catch_6d

    .line 202
    return v1

    .line 210
    :catch_6d
    move-exception v3

    .line 211
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed setThreadScheduleFifo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v1

    .line 189
    .end local v2    # "valid":Z
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_85
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/privilege/SemPrivilegeManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v1
.end method

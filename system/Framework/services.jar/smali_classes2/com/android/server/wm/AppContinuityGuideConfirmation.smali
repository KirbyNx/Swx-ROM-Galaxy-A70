.class public Lcom/android/server/wm/AppContinuityGuideConfirmation;
.super Ljava/lang/Object;
.source "AppContinuityGuideConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppContinuityGuideConfirmation$H;,
        Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final IS_MAIN_SCREEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppContinuityGuideConfirmation"

.field private static final USER_USED_APP_CONTINUITY_SETTING_TRUE:I = 0x1


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

.field private mConfirmedFront:Z

.field private mConfirmedMain:Z

.field private final mContext:Landroid/content/Context;

.field private final mDoConfirmFront:Ljava/lang/Runnable;

.field private final mDoConfirmMain:Ljava/lang/Runnable;

.field private final mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

.field private mLauncherIntent:Landroid/content/Intent;

.field private mShowing:Z

.field private mUserUsedAppContinuitySetting:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mUserUsedAppContinuitySetting:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedFront:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    .line 76
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 211
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$yMdSqzCMtnUTUQOAPB6Rz3bIZOQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$yMdSqzCMtnUTUQOAPB6Rz3bIZOQ;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mDoConfirmMain:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$wYSfhdu7UuU5NQig7i_vpRiR_Sk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$wYSfhdu7UuU5NQig7i_vpRiR_Sk;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mDoConfirmFront:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 88
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->loadSetting()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/AppContinuityGuideConfirmation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mUserUsedAppContinuitySetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/AppContinuityGuideConfirmation$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/AppContinuityGuideConfirmation;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/AppContinuityGuideConfirmation;ZLcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/wm/Task;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->handleShow(ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/AppContinuityGuideConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/AppContinuityGuideConfirmation;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->handleHide()V

    return-void
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .line 265
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x31

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 229
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1000322

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 239
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 240
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 241
    const-string v1, "AppContinuityGuideConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 243
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 245
    const v1, 0x1030300

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 247
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 249
    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_11

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    .line 255
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 257
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleHide()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    if-eqz v0, :cond_10

    .line 206
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 209
    :cond_10
    return-void
.end method

.method private handleShow(ZLcom/android/server/wm/Task;)V
    .registers 10
    .param p1, "isMainScreen"    # Z
    .param p2, "currentTask"    # Lcom/android/server/wm/Task;

    .line 190
    new-instance v6, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    .line 191
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mDoConfirmMain:Ljava/lang/Runnable;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mDoConfirmFront:Ljava/lang/Runnable;

    :goto_b
    move-object v3, v0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/AppContinuityGuideConfirmation;Landroid/content/Context;Ljava/lang/Runnable;ZLcom/android/server/wm/Task;)V

    iput-object v6, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2e

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 198
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 199
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mClingWindow:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method private isLauncherAppsPackage(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mLauncherIntent:Landroid/content/Intent;

    if-nez v0, :cond_17

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mLauncherIntent:Landroid/content/Intent;

    .line 144
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mLauncherIntent:Landroid/content/Intent;

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "launcherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 151
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 152
    const/4 v1, 0x1

    return v1

    .line 154
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_43
    goto :goto_29

    .line 155
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found in LauncherApps."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppContinuityGuideConfirmation"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    return v1
.end method

.method private loadSetting()V
    .registers 4

    .line 119
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->updateUserUsedAppContinuitySetting()V

    .line 120
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    if-nez v0, :cond_1c

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "app_continuity_guide_confirmation_main"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "value":Ljava/lang/String;
    const-string v1, "confirmed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    .line 127
    .end local v0    # "value":Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private saveMainSetting()V
    .registers 5

    .line 130
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    if-eqz v0, :cond_7

    const-string v0, "confirmed"

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 131
    .local v0, "value":Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "app_continuity_guide_confirmation_main"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 136
    return-void
.end method

.method private updateUserUsedAppContinuitySetting()V
    .registers 5

    .line 104
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mUserUsedAppContinuitySetting:Z

    if-nez v0, :cond_19

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 105
    const-string/jumbo v2, "user_used_app_continuity_setting"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v3, v1

    :cond_17
    iput-boolean v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mUserUsedAppContinuitySetting:Z

    .line 115
    :cond_19
    return-void
.end method


# virtual methods
.method public getUserUsedAppContinuitySetting()Z
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->updateUserUsedAppContinuitySetting()V

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mUserUsedAppContinuitySetting:Z

    return v0
.end method

.method getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 176
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    if-eqz v0, :cond_13

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->sendEmptyMessage(I)Z

    .line 181
    :cond_13
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    return v0
.end method

.method public synthetic lambda$new$0$AppContinuityGuideConfirmation()V
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    if-nez v0, :cond_a

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    .line 215
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->saveMainSetting()V

    .line 217
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    .line 218
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->handleHide()V

    .line 219
    return-void
.end method

.method public synthetic lambda$new$1$AppContinuityGuideConfirmation()V
    .registers 2

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedFront:Z

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    .line 225
    invoke-direct {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->handleHide()V

    .line 226
    return-void
.end method

.method shouldShowAppContinuityGuideInMain()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedMain:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public show(ZLcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "isMainScreen"    # Z
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 160
    if-nez p1, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mConfirmedFront:Z

    if-nez v0, :cond_14

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 161
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation;->isLauncherAppsPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 162
    :cond_14
    return-void

    .line 165
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    if-nez v0, :cond_34

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 168
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iput-boolean v2, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mShowing:Z

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->removeMessages(I)V

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation;->mHandler:Lcom/android/server/wm/AppContinuityGuideConfirmation$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppContinuityGuideConfirmation$H;->sendMessage(Landroid/os/Message;)Z

    .line 173
    .end local v0    # "msg":Landroid/os/Message;
    :cond_34
    return-void
.end method

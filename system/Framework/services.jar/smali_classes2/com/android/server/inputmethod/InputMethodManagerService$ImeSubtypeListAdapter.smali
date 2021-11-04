.class Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsKidsMode:Z

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I

.field private final mUserId:I

.field private final settingButtonViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;II)V"
        }
    .end annotation

    .line 5958
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5950
    const/16 v0, 0x5ac

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->settingButtonViewId:I

    .line 5960
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 5961
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 5962
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 5963
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5966
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mUserId:I

    .line 5967
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->isKidsModeRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mIsKidsMode:Z

    .line 5969
    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    .line 5943
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mUserId:I

    return v0
.end method

.method private addSettingButton(Landroid/view/View;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;

    .line 6009
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 6010
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_14

    .line 6011
    return-void

    .line 6014
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 6015
    .local v1, "km":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 6016
    return-void

    .line 6020
    :cond_30
    :try_start_30
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3f} :catch_43

    if-eqz v2, :cond_42

    .line 6021
    return-void

    .line 6026
    :cond_42
    goto :goto_4b

    .line 6023
    :catch_43
    move-exception v2

    .line 6025
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Security Startup has RemoteException, Ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6028
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4b
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 6030
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6031
    .local v2, "settingButtonLayout":Landroid/widget/LinearLayout;
    const/16 v3, 0x5ac

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 6032
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10809f3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6033
    .local v3, "settingImage":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1060188

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 6034
    .local v4, "color":I
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 6036
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6037
    .local v6, "settingImageView":Landroid/widget/ImageView;
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6038
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050177

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 6039
    .local v8, "length":I
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6040
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6041
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6042
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6043
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10807d7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6044
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6045
    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6046
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040a96

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6047
    .local v9, "buttonDescription":Ljava/lang/String;
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 6048
    .local v10, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050178

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6049
    const/4 v11, -0x1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6050
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6051
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6053
    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingButtonEnabled:Z
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000()Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 6054
    # getter for: Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingButtonEnabled:Z
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000()Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6057
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 6058
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6076
    move-object v5, p1

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6077
    return-void
.end method

.method private clearSettingButton(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 6080
    const/16 v0, 0x5ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6081
    .local v0, "settingButtonLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_10

    .line 6082
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6084
    :cond_10
    return-void
.end method

.method private isKidsModeRunning()Z
    .registers 9

    .line 6087
    const/4 v0, 0x0

    .line 6089
    .local v0, "kidsRunning":Z
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.kidshome"

    const-string v3, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6091
    .local v1, "compKidsHome":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6092
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6093
    .local v3, "homeIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6094
    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 6095
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6096
    .local v5, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_37

    move v0, v6

    .line 6099
    .end local v1    # "compKidsHome":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "currentDefaultHome":Landroid/content/ComponentName;
    goto :goto_40

    .line 6097
    :catch_37
    move-exception v1

    .line 6098
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InputMethodManagerService"

    const-string/jumbo v3, "kidsRunning check exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_40
    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 5973
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_d

    .line 5974
    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_d
    nop

    .line 5975
    .local v0, "view":Landroid/view/View;
    if-ltz p1, :cond_9d

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1a

    goto/16 :goto_9d

    .line 5976
    :cond_1a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 5977
    .local v1, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 5978
    .local v2, "imeName":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 5979
    .local v3, "subtypeName":Ljava/lang/CharSequence;
    const v4, 0x1020014

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 5980
    .local v4, "firstTextView":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 5982
    .local v5, "secondTextView":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->clearSettingButton(Landroid/view/View;)V

    .line 5984
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v6, :cond_4b

    .line 5985
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5986
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 5988
    :cond_4b
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.sec.android.inputmethod"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "com.samsung.android.honeyboard"

    if-nez v6, :cond_72

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 5989
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    goto :goto_72

    .line 5997
    :cond_68
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5998
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5999
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 5990
    :cond_72
    :goto_72
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5991
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5992
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mIsKidsMode:Z

    if-nez v6, :cond_8b

    .line 5993
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->addSettingButton(Landroid/view/View;)V

    .line 6001
    :cond_8b
    :goto_8b
    const v6, 0x1020464

    .line 6002
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 6003
    .local v6, "radioButton":Landroid/widget/RadioButton;
    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v8, :cond_99

    const/4 v7, 0x1

    :cond_99
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6004
    return-object v0

    .line 5975
    .end local v1    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "imeName":Ljava/lang/CharSequence;
    .end local v3    # "subtypeName":Ljava/lang/CharSequence;
    .end local v4    # "firstTextView":Landroid/widget/TextView;
    .end local v5    # "secondTextView":Landroid/widget/TextView;
    .end local v6    # "radioButton":Landroid/widget/RadioButton;
    :cond_9d
    :goto_9d
    return-object v0
.end method

.class final Lcom/android/server/sepunion/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultClearCoverHeight:I

.field private mDefaultClearCoverWidth:I

.field private mDefaultCoverColor:I

.field private mDefaultCoverModel:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mIsCoverAttached:Z

.field private mIsCoverVerified:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 42
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 43
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 44
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 45
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 46
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 47
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 48
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 50
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 56
    return-void
.end method

.method private getDefaultTypeOfCover()I
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4c

    .line 60
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 61
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-nez v0, :cond_25

    .line 62
    return v4

    .line 63
    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 64
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v3, :cond_38

    .line 65
    return v3

    .line 66
    :cond_38
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 67
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v2, :cond_4b

    .line 68
    return v2

    .line 70
    :cond_4b
    return v1

    .line 73
    :cond_4c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 74
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 75
    return v4

    .line 78
    :cond_65
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 79
    return v4

    .line 80
    :cond_72
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 81
    return v3

    .line 82
    :cond_7f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 83
    return v2

    .line 87
    :cond_8c
    return v1
.end method

.method private getScreenSizeForClearCover()V
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 136
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 137
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 140
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 141
    .local v3, "rotation":I
    if-eqz v3, :cond_38

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_38

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2f

    .line 153
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 154
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_41

    .line 149
    :cond_2f
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 150
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 151
    goto :goto_41

    .line 144
    :cond_38
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 145
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 146
    nop

    .line 157
    :goto_41
    return-void
.end method

.method private getSupportSViewCoverHeight(I)I
    .registers 3
    .param p1, "coverType"    # I

    .line 105
    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_a

    .line 111
    const/4 v0, 0x0

    .local v0, "supportSViewCoverHeight":I
    goto :goto_d

    .line 108
    .end local v0    # "supportSViewCoverHeight":I
    :cond_a
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 109
    .restart local v0    # "supportSViewCoverHeight":I
    nop

    .line 113
    :goto_d
    return v0
.end method

.method private getSupportSViewCoverWidth(I)I
    .registers 3
    .param p1, "coverType"    # I

    .line 92
    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_a

    .line 98
    const/4 v0, 0x0

    .local v0, "supportSViewCoverWidth":I
    goto :goto_d

    .line 95
    .end local v0    # "supportSViewCoverWidth":I
    :cond_a
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 96
    .restart local v0    # "supportSViewCoverWidth":I
    nop

    .line 100
    :goto_d
    return v0
.end method

.method private static isFactoryMode()Z
    .registers 2

    .line 322
    const-string/jumbo v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "strFactoryProp":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 327
    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 329
    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 330
    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 331
    const-string v0, "  mDefaultCoverColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 332
    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 333
    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 334
    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 335
    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 336
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method initializeDefaultCoverState()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_b

    .line 130
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    .line 132
    :cond_b
    return-void
.end method

.method isCoverAttached()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    return v0
.end method

.method isCoverVerified()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    return v0
.end method

.method isCoverVerifiedAndAttached()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method updateCoverAttachState(Z)Z
    .registers 6
    .param p1, "attached"    # Z

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 278
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_4b

    .line 279
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 280
    const/4 v0, 0x1

    goto :goto_4b

    .line 282
    :cond_15
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    .line 283
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 284
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_4b

    .line 285
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 286
    const/4 v0, 0x1

    goto :goto_4b

    .line 289
    :cond_30
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_4b

    .line 290
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 291
    const/4 v0, 0x1

    goto :goto_4b

    .line 295
    :cond_38
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_44

    .line 296
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverAttachState : This device is not support cover attach"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_44
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_4b

    .line 299
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 300
    const/4 v0, 0x1

    .line 303
    :cond_4b
    :goto_4b
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 304
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverAttachState : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v0
.end method

.method updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .registers 16
    .param p1, "destCoverState"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "srcCoverState"    # Lcom/samsung/android/cover/CoverState;

    .line 174
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    const-string v1, ", color="

    if-eqz v0, :cond_bd

    .line 176
    if-nez p2, :cond_4b

    .line 177
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 178
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    .line 179
    .local v0, "type":I
    iget v8, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 180
    .local v8, "color":I
    iget v9, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 181
    .local v9, "model":I
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v10

    .line 182
    .local v10, "widthPixel":I
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v11

    .line 183
    .local v11, "heightPixel":I
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_37

    .line 184
    iget-boolean v6, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v1, p1

    move v2, v0

    move v3, v8

    move v4, v10

    move v5, v11

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 186
    :cond_37
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v2, "[SmartCover] CoverVerify : sview cover test mode enabled"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 187
    .end local v0    # "type":I
    .end local v8    # "color":I
    .end local v9    # "model":I
    .end local v10    # "widthPixel":I
    .end local v11    # "heightPixel":I
    :cond_3f
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_4a

    .line 188
    sget-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v1, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : srcCoverState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4a
    :goto_4a
    return-void

    .line 192
    :cond_4b
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_137

    .line 193
    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 195
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 196
    .restart local v0    # "type":I
    const/16 v2, 0x8

    if-ne v0, v2, :cond_5d

    .line 197
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    .line 199
    :cond_5d
    const/16 v2, 0xff

    if-eq v0, v2, :cond_6f

    .line 200
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 201
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 204
    :cond_6f
    sget-boolean v2, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v2, :cond_137

    .line 205
    sget-object v2, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", app Uri="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", widthPixel="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightPixel="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_137

    .line 211
    .end local v0    # "type":I
    :cond_bd
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_e3

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_e3

    .line 212
    nop

    .line 213
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    .line 212
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v2, v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    .line 214
    .restart local v0    # "type":I
    iget v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    const-string v3, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v3, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "color":I
    iget v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    const-string v4, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    invoke-static {v4, v3}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v3

    .local v3, "model":I
    goto :goto_eb

    .line 219
    .end local v0    # "type":I
    .end local v2    # "color":I
    .end local v3    # "model":I
    :cond_e3
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    .line 220
    .restart local v0    # "type":I
    iget v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 221
    .restart local v2    # "color":I
    iget v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 223
    .restart local v3    # "model":I
    :goto_eb
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v11

    .line 224
    .local v11, "widthPixel":I
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v12

    .line 225
    .local v12, "heightPixel":I
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v4

    if-nez v4, :cond_104

    .line 226
    iget-boolean v9, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v4, p1

    move v5, v0

    move v6, v2

    move v7, v11

    move v8, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 228
    :cond_104
    sget-boolean v4, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v4, :cond_137

    .line 229
    sget-object v4, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCoverPropertiesLocked : mIsCoverAttached ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "type":I
    .end local v2    # "color":I
    .end local v3    # "model":I
    .end local v11    # "widthPixel":I
    .end local v12    # "heightPixel":I
    :cond_137
    :goto_137
    return-void
.end method

.method updateCoverVerification()Z
    .registers 5

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 243
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v1, :cond_57

    .line 244
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 245
    const/4 v0, 0x1

    goto :goto_57

    .line 247
    :cond_16
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 248
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 249
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v1, :cond_57

    .line 250
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 251
    const/4 v0, 0x1

    goto :goto_57

    .line 254
    :cond_30
    const/4 v1, -0x1

    const-string v3, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-static {v3, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    move v1, v2

    .line 256
    .local v1, "verified":Z
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v2, v1, :cond_43

    .line 257
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 258
    const/4 v0, 0x1

    .line 260
    .end local v1    # "verified":Z
    :cond_43
    goto :goto_57

    .line 262
    :cond_44
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_50

    .line 263
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverVerification : This device is not support cover verify"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_50
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v1, :cond_57

    .line 266
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 267
    const/4 v0, 0x1

    .line 270
    :cond_57
    :goto_57
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 271
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverVerification : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v0
.end method

.method updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V
    .registers 8
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .line 160
    if-nez p1, :cond_b

    .line 161
    sget-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCoverWindowSize(): CoverState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v0

    .line 165
    .local v0, "height":I
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v1

    .line 166
    .local v1, "width":I
    sget-object v2, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverWindowSize(): old window = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new window = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 169
    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 170
    return-void
.end method

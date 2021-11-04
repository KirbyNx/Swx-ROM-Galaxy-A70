.class final Lcom/android/server/display/MagnifierSurfaceControl;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$Border;,
        Lcom/android/server/display/MagnifierSurfaceControl$Control;,
        Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    }
.end annotation


# static fields
.field private static final CREATED:I = 0x1

.field private static final DEBUG:Z = true

.field private static final FEATURE_OVERLAYMAGNIFIER:Ljava/lang/String; = "com.sec.feature.overlaymagnifier"

.field private static final HIDDEN:I = 0x3

.field private static final IDLE:I = 0x0

.field private static final SHOWN:I = 0x2

.field private static final STABILIZER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MagnifierSurfaceControl"

.field private static mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

.field private static mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

.field private static mCurrentDisplayId:I

.field private static mCurrentFollowingStatus:Z

.field private static mEnableMagnifierWindowController:Z

.field private static mThemePackage:Ljava/lang/String;

.field private static final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private static mTwPrimaryTextColorLight:I

.field private static mTwScreenBackgroundColorLight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnableMagnifierState:I

.field private mFxSession:Landroid/view/SurfaceSession;

.field private mHandler:Landroid/os/Handler;

.field private mLastOffsetSpec:Landroid/view/MagnificationSpec;

.field private mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    .line 102
    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I

    .line 103
    sput v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I

    .line 104
    const-string v1, "dummy"

    sput-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;

    .line 107
    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z

    .line 109
    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierWindowController:Z

    .line 113
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;
    .param p5, "displayId"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 94
    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    .line 117
    iput-object p4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 118
    iput-object p2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    .line 119
    iput-object p3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    .line 120
    sput p5, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    .line 121
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    .line 122
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 123
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 125
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_magnifier"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    .line 130
    :cond_4b
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 173
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 65
    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/MagnifierSurfaceControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/MagnifierSurfaceControl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    return p1
.end method

.method static synthetic access$1400()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$1500()I
    .registers 1

    .line 65
    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    return v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 65
    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700()I
    .registers 1

    .line 65
    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 65
    sput p0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I

    return p0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 65
    sget v0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 65
    sput p0, Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I

    return p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 65
    sget-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/server/display/MagnifierSurfaceControl$Control;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/display/MagnifierSurfaceControl$Control;)Lcom/android/server/display/MagnifierSurfaceControl$Control;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Control;

    .line 65
    sput-object p0, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    return-object p0
.end method

.method private createDefaultSurface()V
    .registers 8

    .line 300
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    .line 303
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    .line 304
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v2, "OverlayMagnifier"

    .line 305
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 307
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const v2, -0x7ffffbfc

    .line 308
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 311
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 312
    .local v1, "defaultDisplay":Landroid/view/Display;
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 313
    .local v2, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setBufferSize(II)V

    .line 314
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    sget v5, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    const-string v6, "OverlayMagnifier"

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/display/MagnifierSurfaceControl;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 316
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 317
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 318
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 319
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->allocateBuffers()V

    .line 320
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v4, 0x1e847e

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_7e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_7e} :catch_81
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7f

    .line 323
    .end local v1    # "defaultDisplay":Landroid/view/Display;
    .end local v2    # "defaultDisplayInfo":Landroid/view/DisplayInfo;
    goto :goto_85

    .line 324
    :catchall_7f
    move-exception v1

    goto :goto_87

    .line 321
    :catch_81
    move-exception v1

    .line 322
    .local v1, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_82
    invoke-virtual {v1}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    .line 324
    .end local v1    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_85
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_7f

    throw v1
.end method

.method private destroyMainSurface()V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string v2, "destroyMainSurface"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 367
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 368
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    .line 370
    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 371
    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mFxSession:Landroid/view/SurfaceSession;

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private hide()V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_18

    .line 219
    const-string v1, "MagnifierSurfaceControl"

    const-string v2, "SurfaceControl is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_18
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 224
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 226
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 227
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 228
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 229
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    if-eqz v1, :cond_39

    .line 230
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->hide()V

    .line 231
    :cond_39
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 232
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->hide()V

    .line 233
    :cond_4a
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 234
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method private static populateOverlayInputInfo(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V
    .registers 5
    .param p0, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "isVisible"    # Z

    .line 746
    iput-object p1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 747
    iput p2, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 748
    iput-boolean p3, p0, Landroid/view/InputWindowHandle;->visible:Z

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 750
    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 751
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 752
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 753
    const/16 v0, 0x38

    iput v0, p0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputWindowHandle;->portalToDisplayId:I

    .line 756
    iget-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 758
    return-void
.end method

.method static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .registers 7
    .param p0, "sc"    # Landroid/view/SurfaceControl;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 768
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 769
    .local v0, "inputWindowHandle":Landroid/view/InputWindowHandle;
    const/16 v1, 0x7df

    const/4 v2, 0x1

    invoke-static {v0, p3, v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->populateOverlayInputInfo(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V

    .line 770
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 771
    return-void
.end method

.method private show(Landroid/view/MagnificationSpec;)V
    .registers 10
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 239
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    if-nez v1, :cond_20

    .line 241
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: mState is wrong. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_20
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2e

    .line 245
    const-string v1, "MagnifierSurfaceControl"

    const-string/jumbo v2, "show: SurfaceControl is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v0

    return-void

    .line 249
    :cond_2e
    const-string v1, "MagnifierSurfaceControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", spec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 252
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 254
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 255
    invoke-virtual {v1, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    .line 256
    .local v1, "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceOffset()Landroid/graphics/Point;

    move-result-object v2

    .line 257
    .local v2, "pt":Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 258
    .local v3, "cropRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_b3

    .line 260
    :try_start_6c
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 261
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 262
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v7, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 264
    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setPosition(Landroid/graphics/Point;)V

    .line 265
    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a7

    .line 266
    iput v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 267
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 268
    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->show()V

    .line 269
    sget-object v4, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V
    :try_end_a7
    .catchall {:try_start_6c .. :try_end_a7} :catchall_ad

    .line 272
    :cond_a7
    :try_start_a7
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 273
    nop

    .line 274
    .end local v1    # "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .end local v2    # "pt":Landroid/graphics/Point;
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    monitor-exit v0

    .line 275
    return-void

    .line 272
    .restart local v1    # "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .restart local v2    # "pt":Landroid/graphics/Point;
    .restart local v3    # "cropRect":Landroid/graphics/Rect;
    :catchall_ad
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 273
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl;
    .end local p1    # "spec":Landroid/view/MagnificationSpec;
    throw v4

    .line 274
    .end local v1    # "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .end local v2    # "pt":Landroid/graphics/Point;
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl;
    .restart local p1    # "spec":Landroid/view/MagnificationSpec;
    :catchall_b3
    move-exception v1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_a7 .. :try_end_b5} :catchall_b3

    throw v1
.end method


# virtual methods
.method public create()V
    .registers 7

    .line 279
    const-string v0, "MagnifierSurfaceControl"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->createDefaultSurface()V

    .line 282
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 284
    .local v0, "defaultDisplay":Landroid/view/Display;
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 286
    .local v1, "defaultDisplayInfo":Landroid/view/DisplayInfo;
    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierState:I

    if-lez v2, :cond_30

    .line 287
    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$Control;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Control;-><init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    .line 289
    :cond_30
    new-instance v2, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V

    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 290
    if-eqz v2, :cond_4a

    .line 291
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    .line 293
    :cond_4a
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 294
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mListener:Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    if-eqz v2, :cond_5a

    .line 295
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSurface:Landroid/view/Surface;

    iget v4, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    sget v5, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onCreateSurface(Landroid/view/Surface;II)V

    .line 297
    :cond_5a
    return-void
.end method

.method public dismiss()V
    .registers 5

    .line 376
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 378
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->destroyMainSurface()V

    .line 379
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mState:I

    .line 380
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 381
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    .line 382
    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mBorder:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .line 384
    :cond_1a
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    if-eqz v1, :cond_25

    .line 385
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->dismiss()V

    .line 386
    sput-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    .line 388
    :cond_25
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V

    .line 389
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mSizeChangeListener:Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 390
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public enableMagnifierWindowController(Z)V
    .registers 6
    .param p1, "state"    # Z

    .line 191
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    if-eqz v1, :cond_3a

    .line 193
    sput-boolean p1, Lcom/android/server/display/MagnifierSurfaceControl;->mEnableMagnifierWindowController:Z

    .line 194
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz p1, :cond_2a

    .line 195
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mLastOffsetSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v1

    .line 196
    .local v1, "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->setPosition(Landroid/graphics/Point;)V

    .line 197
    sget-object v2, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->show()V

    .end local v1    # "displayInfo":Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    goto :goto_3a

    .line 198
    :cond_2a
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3a

    if-nez p1, :cond_3a

    .line 199
    sget-object v1, Lcom/android/server/display/MagnifierSurfaceControl;->mControl:Lcom/android/server/display/MagnifierSurfaceControl$Control;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->hide()V

    nop

    .line 202
    :cond_3a
    :goto_3a
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public onDisplayAdded(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 338
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 339
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_23

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayAdded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MagnifierSurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0    # "defaultDisplay":Landroid/view/Display;
    :cond_23
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 359
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 347
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 348
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_26

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MagnifierSurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    .line 354
    :cond_26
    return-void
.end method

.method public setCurrentFollowingStatus(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 185
    sput-boolean p1, Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentFollowingStatus:Z

    .line 186
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayPolicy;->setCurrentFollowingStatus(Z)V

    .line 188
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 206
    if-eqz p1, :cond_6

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->show(Landroid/view/MagnificationSpec;)V

    goto :goto_9

    .line 209
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl;->hide()V

    .line 211
    :goto_9
    return-void
.end method

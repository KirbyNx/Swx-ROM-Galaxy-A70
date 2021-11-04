.class final Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessoryData"
.end annotation


# instance fields
.field private mActionNo:I

.field private mBundle:Landroid/os/Bundle;

.field private mOriginalAccessoryId:Ljava/lang/String;

.field private mVerifyRequired:Z


# direct methods
.method private constructor <init>(IZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "actionNo"    # I
    .param p2, "verifyRequired"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private constructor <init>(IZLandroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .param p1, "actionNo"    # I
    .param p2, "verifyRequired"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "originalAccessoryKey"    # Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    .line 376
    iput-boolean p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z

    .line 377
    iput-object p3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    .line 378
    iput-object p4, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;

    .line 379
    return-void
.end method

.method synthetic constructor <init>(IZLandroid/os/Bundle;Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$1;)V
    .registers 6
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/os/Bundle;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$1;

    .line 364
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 364
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 364
    iget v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 364
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    .line 364
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;

    return-object v0
.end method

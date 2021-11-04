.class Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
.super Ljava/lang/Object;
.source "CustomStartingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CustomStartingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomStartingWindowData"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mCustomImageLoaded:Z

.field private mImagePath:Ljava/lang/String;

.field private mImagePathQualifier:Ljava/lang/String;

.field private mLayoutResId:I

.field private mLayoutResIdForMass:I

.field private mPackageName:Ljava/lang/String;

.field private mTaskUserId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 10
    .param p1, "flattenComponentName"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "taskUserId"    # I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const-string v0, "WindowManager"

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->TAG:Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mCustomImageLoaded:Z

    .line 341
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 342
    .local v1, "compName":Landroid/content/ComponentName;
    const-string v2, ""

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_17
    move-object v3, v2

    :goto_18
    iput-object v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mPackageName:Ljava/lang/String;

    .line 343
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_21
    move-object v3, v2

    :goto_22
    iput-object v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mClassName:Ljava/lang/String;

    .line 344
    iput p3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mTaskUserId:I

    .line 346
    iget-object v3, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomStartingWindowData: className="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", taskUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mTaskUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", caller="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p2, :cond_8a

    .line 352
    const-string v2, "com.samsung.android.startingwindow.LAYOUT_RESID"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mLayoutResId:I

    .line 361
    const-string v0, "com.samsung.android.startingwindow.IMAGE_PATH"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;

    .line 362
    const-string v0, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;

    .line 366
    :cond_8a
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/wm/CustomStartingWindowController$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/os/Bundle;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/wm/CustomStartingWindowController$1;

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;-><init>(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mLayoutResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mLayoutResIdForMass:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mTaskUserId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 320
    iget-boolean v0, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mCustomImageLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    .param p1, "x1"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mCustomImageLoaded:Z

    return p1
.end method

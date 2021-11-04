.class final Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "MagnifierDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MagnifierDevice"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MagnifierDevice"


# instance fields
.field private mCurrentDisplayId:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mMode:Landroid/view/Display$Mode;

.field private mName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/display/MagnifierDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MagnifierDisplayAdapter;Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
    .registers 12
    .param p1, "this$0"    # Lcom/android/server/display/MagnifierDisplayAdapter;
    .param p2, "adapter"    # Lcom/android/server/display/DisplayAdapter;
    .param p3, "displayToken"    # Landroid/os/IBinder;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;
    .param p7, "currentDisplayId"    # I

    .line 191
    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->this$0:Lcom/android/server/display/MagnifierDisplayAdapter;

    .line 192
    const-string v0, "MagnifierDevice"

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mCurrentDisplayId:I

    .line 193
    iput-object p4, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mSurface:Landroid/view/Surface;

    .line 194
    iput-object p5, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mName:Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 196
    iput p7, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mCurrentDisplayId:I

    .line 197
    invoke-virtual {p6}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getScale()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mMode:Landroid/view/Display$Mode;

    .line 200
    const-string v1, "MagnifierDevice init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method


# virtual methods
.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "defaultDisplay":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_79

    .line 208
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 209
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 212
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 213
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 214
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 215
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 216
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 217
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const v2, 0x20000040

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 221
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 222
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 223
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 224
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 225
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/Display$Mode;

    iget-object v4, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mMode:Landroid/view/Display$Mode;

    aput-object v4, v3, v2

    iput-object v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 226
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v1

    .line 229
    :cond_79
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 230
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 232
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 233
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v1
.end method

.method public hasStableUniqueId()Z
    .registers 2

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 243
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_e

    .line 244
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 245
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    .line 247
    :cond_e
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 250
    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->mSurface:Landroid/view/Surface;

    .line 251
    return-void
.end method

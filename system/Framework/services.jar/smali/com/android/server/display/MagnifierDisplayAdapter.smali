.class final Lcom/android/server/display/MagnifierDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "MagnifierDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/MagnifierSurfaceControl$Listener;
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "MagnifierDisplayAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDisplayId:I

.field private mDevice:Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mEnabled:Z

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mScale:F

.field private mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

.field private mTempSpec:Landroid/view/MagnificationSpec;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .line 61
    const-string v5, "MagnifierDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    .line 53
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    .line 57
    iput v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mCurrentDisplayId:I

    .line 62
    iput-object p2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 64
    iput-object p5, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 150
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 73
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 74
    return-void
.end method

.method public enable(Z)V
    .registers 11
    .param p1, "enable"    # Z

    .line 82
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    const-string v1, "enable:"

    const-string v2, "MagnifierDisplayAdapter"

    if-ne v0, p1, :cond_20

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " flag is same"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 87
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mEnabled:Z

    .line 90
    if-eqz p1, :cond_4d

    .line 91
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v4, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget v8, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mCurrentDisplayId:I

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 92
    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->create()V

    goto :goto_6a

    .line 94
    :cond_4d
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-eqz v0, :cond_54

    .line 95
    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    .line 96
    :cond_54
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

    if-eqz v0, :cond_65

    .line 97
    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/MagnifierDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 100
    :cond_65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 101
    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

    .line 103
    :goto_6a
    return-void
.end method

.method public enableMagnifierWindowController(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 136
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_5

    .line 137
    return-void

    .line 139
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->enableMagnifierWindowController(Z)V

    .line 140
    return-void
.end method

.method public onChangeSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChangeSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnifierDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

    if-eqz v0, :cond_1f

    .line 171
    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;->setSurface(Landroid/view/Surface;)V

    goto :goto_25

    .line 173
    :cond_1f
    const-string/jumbo v0, "onChangeSurface: device is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_25
    return-void
.end method

.method public onCreateSurface(Landroid/view/Surface;II)V
    .registers 15
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "defaultModeId"    # I
    .param p3, "currentDisplayId"    # I

    .line 154
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_5
    const-string v1, "MagnifierDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v1, "OverlayMagnifier"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v6

    .line 159
    .local v6, "displayToken":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

    const-string v8, "OverlayMagnifier"

    iget-object v9, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p0

    move-object v7, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;-><init>(Lcom/android/server/display/MagnifierDisplayAdapter;Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;I)V

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mDevice:Lcom/android/server/display/MagnifierDisplayAdapter$MagnifierDevice;

    .line 160
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/MagnifierDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 161
    .end local v6    # "displayToken":Landroid/os/IBinder;
    monitor-exit v0

    .line 163
    return-void

    .line 161
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public registerLocked()V
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 79
    return-void
.end method

.method public setCurrentDisplayIdMagnifier(I)V
    .registers 2
    .param p1, "displayid"    # I

    .line 68
    iput p1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mCurrentDisplayId:I

    .line 69
    return-void
.end method

.method public setCurrentFollowingStatus(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 128
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_5

    .line 129
    return-void

    .line 131
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierSurfaceControl;->setCurrentFollowingStatus(Z)V

    .line 133
    return-void
.end method

.method public setMagnificationSettings(IIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .line 106
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateSettings(IIF)V

    .line 107
    iput p3, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    .line 108
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 5
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 111
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v1, :cond_9

    .line 113
    monitor-exit v0

    return-void

    .line 115
    :cond_9
    if-eqz p1, :cond_25

    .line 116
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 117
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 118
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mScale:F

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 119
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mTempSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    goto :goto_2b

    .line 121
    :cond_25
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayAdapter;->mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 123
    :goto_2b
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

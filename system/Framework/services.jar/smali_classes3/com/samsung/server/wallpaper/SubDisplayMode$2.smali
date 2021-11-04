.class Lcom/samsung/server/wallpaper/SubDisplayMode$2;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "SubDisplayMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SubDisplayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/SubDisplayMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 87
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "folded"    # Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayFoldChanged: displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubDisplayMode"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    .line 93
    .local v0, "prevFolderState":I
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setLidState(I)V

    .line 94
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v1

    .line 96
    .local v1, "curFolderState":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    if-eq v1, v0, :cond_44

    .line 97
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    # getter for: Lcom/samsung/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->access$000(Lcom/samsung/server/wallpaper/SubDisplayMode;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 98
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->setFolderState(II)V

    .line 100
    :cond_44
    return-void
.end method

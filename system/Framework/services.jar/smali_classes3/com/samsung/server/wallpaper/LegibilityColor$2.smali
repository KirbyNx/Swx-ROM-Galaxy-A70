.class Lcom/samsung/server/wallpaper/LegibilityColor$2;
.super Landroid/os/AsyncTask;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/LegibilityColor;->makeColorExtractor(IZ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

.field final synthetic val$landscape:Z

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;IZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 160
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    iput p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    iput-boolean p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .param p1, "voids"    # [Ljava/lang/Void;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractColor start which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", landscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6e

    .line 168
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    const/16 v4, 0x5a

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-static {v0}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_4c

    .line 175
    :cond_3b
    new-array v0, v2, [Landroid/app/SemWallpaperColors;

    .line 176
    .local v0, "colors":[Landroid/app/SemWallpaperColors;
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v2

    iget v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_7e

    .line 170
    .end local v0    # "colors":[Landroid/app/SemWallpaperColors;
    :cond_4c
    :goto_4c
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/SemWallpaperColors;

    .line 171
    .restart local v0    # "colors":[Landroid/app/SemWallpaperColors;
    iget-object v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v5}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v5

    iget v6, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v4

    aput-object v4, v0, v3

    .line 172
    iget-object v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v4}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v4

    iget v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    const/16 v6, 0x10e

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_7e

    .line 179
    .end local v0    # "colors":[Landroid/app/SemWallpaperColors;
    :cond_6e
    new-array v0, v2, [Landroid/app/SemWallpaperColors;

    .line 180
    .restart local v0    # "colors":[Landroid/app/SemWallpaperColors;
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v2

    iget v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v2

    aput-object v2, v0, v3

    .line 183
    :goto_7e
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/LegibilityColor$2;->isCancelled()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9c

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: this task is cancelled, which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-object v4

    .line 188
    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractColor end which = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    aget-object v2, v0, v3

    if-nez v2, :cond_bc

    .line 191
    const-string v2, "colors == null, return"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-object v4

    .line 195
    :cond_bc
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v2

    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    iget-boolean v5, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-virtual {v2, v3, v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    invoke-static {v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$200(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    move-result-object v2

    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyColor end which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 160
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 205
    return-void
.end method

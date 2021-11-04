.class public final synthetic Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/function/Consumer;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-wide p2, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$1:J

    iput-wide p4, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$2:J

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$3:Ljava/util/function/Consumer;

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$4:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$5:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-wide v1, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$1:J

    iget-wide v3, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$2:J

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$3:Ljava/util/function/Consumer;

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$4:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$MoGZXmiJD1QToxsPrLhlkZpfubE;->f$5:Ljava/util/ArrayList;

    move-object v8, p1

    check-cast v8, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-static/range {v0 .. v8}, Lcom/android/server/wm/WallpaperAnimationAdapter;->lambda$startWallpaperAnimations$0(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WallpaperWindowToken;)V

    return-void
.end method

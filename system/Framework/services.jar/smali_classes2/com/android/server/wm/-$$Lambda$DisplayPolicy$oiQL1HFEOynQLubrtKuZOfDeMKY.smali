.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$10:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/util/Pair;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/android/server/wm/WindowState;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;IILandroid/util/Pair;ZZLcom/android/server/wm/WindowState;Ljava/lang/String;[Lcom/android/internal/view/AppearanceRegion;ZZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$3:Landroid/util/Pair;

    iput-boolean p5, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$4:Z

    iput-boolean p6, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$5:Z

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$6:Lcom/android/server/wm/WindowState;

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$8:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p10, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$9:Z

    iput-boolean p11, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$10:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$3:Landroid/util/Pair;

    iget-boolean v4, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$4:Z

    iget-boolean v5, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$5:Z

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$6:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$8:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v9, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$9:Z

    iget-boolean v10, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;->f$10:Z

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(IILandroid/util/Pair;ZZLcom/android/server/wm/WindowState;Ljava/lang/String;[Lcom/android/internal/view/AppearanceRegion;ZZ)V

    return-void
.end method

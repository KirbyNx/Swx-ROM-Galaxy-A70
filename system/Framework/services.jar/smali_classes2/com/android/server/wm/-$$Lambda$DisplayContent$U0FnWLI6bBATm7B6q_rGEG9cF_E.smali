.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Landroid/graphics/Region;

.field public final synthetic f$2:Landroid/graphics/Region;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/graphics/Region;

.field public final synthetic f$5:[I

.field public final synthetic f$6:Landroid/graphics/Region;

.field public final synthetic f$7:Landroid/graphics/Rect;

.field public final synthetic f$8:Landroid/graphics/Rect;

.field public final synthetic f$9:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;ZLandroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$2:Landroid/graphics/Region;

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$4:Landroid/graphics/Region;

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$5:[I

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$6:Landroid/graphics/Region;

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$7:Landroid/graphics/Rect;

    iput-object p9, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$8:Landroid/graphics/Rect;

    iput-object p10, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$9:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$1:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$2:Landroid/graphics/Region;

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$4:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$5:[I

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$6:Landroid/graphics/Region;

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$7:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$8:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$U0FnWLI6bBATm7B6q_rGEG9cF_E;->f$9:Landroid/graphics/Region;

    move-object v10, p1

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/DisplayContent;->lambda$calculateSystemGestureExclusion$24$DisplayContent(Landroid/graphics/Region;Landroid/graphics/Region;ZLandroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

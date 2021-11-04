.class public final synthetic Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformWindowController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;->f$0:Lcom/android/server/wm/FreeformWindowController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;->f$0:Lcom/android/server/wm/FreeformWindowController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;->f$1:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;->f$2:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/FreeformWindowController;->lambda$canApplyDimsLocked$1$FreeformWindowController(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method

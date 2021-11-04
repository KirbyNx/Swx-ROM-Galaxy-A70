.class final Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityViewInfo"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "parentClient"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 780
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 781
    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 767
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 767
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.class final Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DebugFlags"
.end annotation


# static fields
.field static final FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

.field static final FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 600
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    const-string v1, "debug.optimize_startinput"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    .line 602
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    const-string/jumbo v1, "persist.pre_render_ime_views"

    invoke-direct {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

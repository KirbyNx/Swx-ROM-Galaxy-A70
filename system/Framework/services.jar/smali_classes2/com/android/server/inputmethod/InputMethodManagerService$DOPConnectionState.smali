.class public Lcom/android/server/inputmethod/InputMethodManagerService$DOPConnectionState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DOPConnectionState"
.end annotation


# static fields
.field public static final SETTING_SOURCE_CONNECT_CONN:I = 0x1

.field public static final SETTING_SOURCE_CONNECT_DEXONPC:I = 0x3

.field public static final SETTING_SOURCE_CONNECT_DISCONN:I = 0x0

.field public static final SETTING_SOURCE_CONNECT_MIRRORING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7860
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$DOPConnectionState;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

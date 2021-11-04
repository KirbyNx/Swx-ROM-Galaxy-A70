.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$pMWtrsZcgVuYCgoaSKrv4OYq1tc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$pMWtrsZcgVuYCgoaSKrv4OYq1tc;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public final onHardKeyboardStatusChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$pMWtrsZcgVuYCgoaSKrv4OYq1tc;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getHwKeyboardStatusChangeListener$6$InputMethodManagerService(Z)V

    return-void
.end method

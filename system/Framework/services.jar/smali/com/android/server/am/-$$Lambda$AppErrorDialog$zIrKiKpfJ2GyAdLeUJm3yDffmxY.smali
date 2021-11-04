.class public final synthetic Lcom/android/server/am/-$$Lambda$AppErrorDialog$zIrKiKpfJ2GyAdLeUJm3yDffmxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppErrorDialog$zIrKiKpfJ2GyAdLeUJm3yDffmxY;->f$0:Lcom/android/server/am/AppErrorDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppErrorDialog$zIrKiKpfJ2GyAdLeUJm3yDffmxY;->f$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorDialog;->lambda$new$0$AppErrorDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

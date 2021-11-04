.class public final synthetic Lcom/android/server/am/-$$Lambda$AppErrorDialog$3eaJGoGlhpz1YWJC_IzSiObE8gk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$AppErrorDialog$3eaJGoGlhpz1YWJC_IzSiObE8gk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$AppErrorDialog$3eaJGoGlhpz1YWJC_IzSiObE8gk;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$AppErrorDialog$3eaJGoGlhpz1YWJC_IzSiObE8gk;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$AppErrorDialog$3eaJGoGlhpz1YWJC_IzSiObE8gk;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppErrorDialog$3eaJGoGlhpz1YWJC_IzSiObE8gk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/am/AppErrorDialog;->lambda$new$1(Landroid/content/DialogInterface;)V

    return-void
.end method

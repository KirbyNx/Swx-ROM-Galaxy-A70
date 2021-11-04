.class public final synthetic Lcom/android/server/am/-$$Lambda$AppNotRespondingDialog$JmWUDmy_hglXxw2OjxycODNnZdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$AppNotRespondingDialog$JmWUDmy_hglXxw2OjxycODNnZdE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$AppNotRespondingDialog$JmWUDmy_hglXxw2OjxycODNnZdE;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$AppNotRespondingDialog$JmWUDmy_hglXxw2OjxycODNnZdE;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$AppNotRespondingDialog$JmWUDmy_hglXxw2OjxycODNnZdE;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppNotRespondingDialog$JmWUDmy_hglXxw2OjxycODNnZdE;

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

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->lambda$new$1(Landroid/content/DialogInterface;)V

    return-void
.end method

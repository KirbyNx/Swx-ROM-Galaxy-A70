.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V

    return-void
.end method

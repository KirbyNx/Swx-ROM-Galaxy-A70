.class public final synthetic Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$1(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

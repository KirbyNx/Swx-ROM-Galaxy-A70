.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;-><init>()V

    sput-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$1RwULshHuiVWMJUnlowtRUfW0c8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getHWUsingApps()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

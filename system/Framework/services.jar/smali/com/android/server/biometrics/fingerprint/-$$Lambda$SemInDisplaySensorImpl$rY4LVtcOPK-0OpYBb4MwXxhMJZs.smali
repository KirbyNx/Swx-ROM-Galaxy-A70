.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->lambda$notifyFingerStartEventToTSP$0()V

    return-void
.end method

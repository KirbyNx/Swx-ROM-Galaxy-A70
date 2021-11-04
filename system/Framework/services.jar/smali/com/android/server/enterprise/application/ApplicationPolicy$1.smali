.class Lcom/android/server/enterprise/application/ApplicationPolicy$1;
.super Ljava/util/ArrayList;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 444
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    const-string v0, "android.permission-group.CONTACTS"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 447
    const-string v0, "android.permission-group.CALENDAR"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v0, "android.permission-group.SMS"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v0, "android.permission-group.STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v0, "android.permission-group.LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v0, "android.permission-group.PHONE"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v0, "android.permission-group.MICROPHONE"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v0, "android.permission-group.CAMERA"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v0, "android.permission-group.SENSORS"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v0, "android.permission-group.CALL_LOG"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v0, "android.permission-group.ACTIVITY_RECOGNITION"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

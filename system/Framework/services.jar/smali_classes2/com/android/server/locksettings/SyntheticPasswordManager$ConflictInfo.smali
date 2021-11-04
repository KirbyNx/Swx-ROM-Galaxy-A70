.class Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConflictInfo"
.end annotation


# instance fields
.field final handle:J

.field final userId:I


# direct methods
.method constructor <init>(JI)V
    .registers 4
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    iput-wide p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    .line 1219
    iput p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    .line 1220
    return-void
.end method

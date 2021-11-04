.class public Lcom/android/server/locksettings/SyntheticPasswordDump;
.super Ljava/lang/Object;
.source "SyntheticPasswordDump.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordDump"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordDump_SDP"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spManager"    # Lcom/android/server/locksettings/SyntheticPasswordManager;
    .param p3, "locksettings"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "tokenStr"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 22
    const-string v0, "SyntheticPasswordDump_SDP"

    const-string v1, "Dump not supported for this device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

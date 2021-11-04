.class public Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$DOPConnectionState;
.super Ljava/lang/Object;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DOPConnectionState"
.end annotation


# static fields
.field public static final SETTING_SOURCE_CONNECT_CONN:I = 0x1

.field public static final SETTING_SOURCE_CONNECT_DEXONPC:I = 0x3

.field public static final SETTING_SOURCE_CONNECT_DISCONN:I = 0x0

.field public static final SETTING_SOURCE_CONNECT_MIRRORING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 52
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$DOPConnectionState;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

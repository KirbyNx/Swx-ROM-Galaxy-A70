.class public Lcom/android/server/input/HidConsts;
.super Ljava/lang/Object;
.source "HidConsts.java"


# static fields
.field public static final BATTERY_REPORT_ID:B = 0x20t

.field public static final BOOT_KEYBOARD_REPORT_ID:B = 0x1t

.field public static final BOOT_MOUSE_REPORT_ID:B = 0x2t

.field public static final DESCRIPTION:Ljava/lang/String; = "Samsung HID Keyboard/Mouse"

.field public static final DESCRIPTOR:[B

.field public static final KEYBOARD_INPUT_REPORT_ID:B = 0x1t

.field public static final KEYBOARD_LED_CAPS_LOCK:B = 0x2t

.field public static final KEYBOARD_LED_NUM_LOCK:B = 0x1t

.field public static final KEYBOARD_LED_SCROLL_LOCK:B = 0x4t

.field public static final KEYBOARD_OUTPUT_REPORT_ID:B = 0x1t

.field public static final MOUSE_REPORT_ID:B = 0x2t

.field public static final NAME:Ljava/lang/String; = "Samsung HID Device"

.field public static final PROVIDER:Ljava/lang/String; = "Samsung"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0xbe

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    return-void

    :array_a
    .array-data 1
        0x5t
        0x1t
        0x9t
        0x2t
        -0x5ft
        0x1t
        0x9t
        0x1t
        -0x5ft
        0x0t
        -0x7bt
        0x2t
        0x5t
        0x9t
        0x19t
        0x1t
        0x29t
        0x3t
        0x15t
        0x0t
        0x25t
        0x1t
        -0x6bt
        0x3t
        0x75t
        0x1t
        -0x7ft
        0x2t
        -0x6bt
        0x1t
        0x75t
        0x5t
        -0x7ft
        0x3t
        0x5t
        0x1t
        0x9t
        0x30t
        0x9t
        0x31t
        0x15t
        -0x7ft
        0x25t
        0x7ft
        0x75t
        0x8t
        -0x6bt
        0x2t
        -0x7ft
        0x6t
        0x9t
        0x38t
        0x15t
        -0x7ft
        0x25t
        0x7ft
        0x75t
        0x8t
        -0x6bt
        0x1t
        -0x7ft
        0x6t
        -0x40t
        -0x40t
        0x5t
        0xct
        0x9t
        0x1t
        -0x5ft
        0x1t
        -0x7bt
        0x20t
        0x5t
        0x1t
        0x9t
        0x6t
        -0x5ft
        0x2t
        0x5t
        0x6t
        0x9t
        0x20t
        0x15t
        0x0t
        0x26t
        -0x1t
        0x0t
        0x75t
        0x8t
        -0x6bt
        0x1t
        -0x7ft
        0x2t
        -0x40t
        -0x40t
        0x5t
        0x1t
        0x9t
        0x6t
        -0x5ft
        0x1t
        -0x7bt
        0x1t
        0x5t
        0x7t
        0x19t
        -0x20t
        0x29t
        -0x19t
        0x15t
        0x0t
        0x25t
        0x1t
        0x75t
        0x1t
        -0x6bt
        0x8t
        -0x7ft
        0x2t
        0x5t
        0xct
        0x15t
        0x0t
        0x25t
        0x1t
        -0x6bt
        0x7t
        0x75t
        0x1t
        0x9t
        -0x4at
        0x9t
        -0x4bt
        0x9t
        -0x49t
        0x9t
        -0x33t
        0x9t
        -0x1et
        0x9t
        -0x17t
        0x9t
        -0x16t
        -0x7ft
        0x2t
        -0x6bt
        0x1t
        0x75t
        0x1t
        -0x7ft
        0x3t
        0x5t
        0x7t
        -0x6bt
        0x5t
        0x75t
        0x1t
        -0x7bt
        0x1t
        0x5t
        0x8t
        0x19t
        0x1t
        0x29t
        0x5t
        -0x6ft
        0x2t
        -0x6bt
        0x1t
        0x75t
        0x3t
        -0x6ft
        0x3t
        -0x6bt
        0x6t
        0x75t
        0x8t
        0x15t
        0x0t
        0x25t
        0x65t
        0x5t
        0x7t
        0x19t
        0x0t
        0x29t
        0x65t
        -0x7ft
        0x0t
        -0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

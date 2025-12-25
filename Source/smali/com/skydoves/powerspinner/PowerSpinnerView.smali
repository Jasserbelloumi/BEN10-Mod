.class public final Lcom/skydoves/powerspinner/PowerSpinnerView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "PowerSpinnerView.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/powerspinner/PowerSpinnerView$Builder;,
        Lcom/skydoves/powerspinner/PowerSpinnerView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPowerSpinnerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PowerSpinnerView.kt\ncom/skydoves/powerspinner/PowerSpinnerView\n+ 2 WhatIfExtension.kt\ncom/skydoves/powerspinner/internals/WhatIfExtensionKt\n*L\n1#1,966:1\n32#2:967\n48#2,4:968\n34#2:972\n53#2:973\n36#2:974\n32#2:975\n48#2,4:976\n34#2:980\n53#2:981\n36#2:982\n*S KotlinDebug\n*F\n+ 1 PowerSpinnerView.kt\ncom/skydoves/powerspinner/PowerSpinnerView\n*L\n583#1:967\n583#1:968,4\n583#1:972\n583#1:973\n583#1:974\n805#1:975\n805#1:976,4\n805#1:980\n805#1:981\n805#1:982\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u00d2\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u0016H\u0002J\n\u0010\u0094\u0001\u001a\u00030\u0092\u0001H\u0002J\u000f\u0010\u0095\u0001\u001a\u00020\nH\u0000\u00a2\u0006\u0003\u0008\u0096\u0001J\u0008\u0010\u0097\u0001\u001a\u00030\u0092\u0001J\u001b\u0010\u0098\u0001\u001a\u00030\u0092\u00012\u000f\u0010\u0099\u0001\u001a\n\u0012\u0005\u0012\u00030\u0092\u00010\u009a\u0001H\u0002J\n\u0010\u009b\u0001\u001a\u00030\u0092\u0001H\u0007J\u0012\u0010\u009c\u0001\u001a\u00030\u0092\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001b\u0010\u009c\u0001\u001a\u00030\u0092\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u009d\u0001\u001a\u00020\nH\u0002J\u0015\u0010\u009e\u0001\u001a\t\u0012\u0005\u0012\u0003H\u009f\u00010\u001c\"\u0005\u0008\u0000\u0010\u009f\u0001J\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u0001J\t\u0010\u00a2\u0001\u001a\u00020\nH\u0002J\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u0001J\t\u0010\u00a5\u0001\u001a\u00020\nH\u0002J\u001b\u0010\u00a6\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u00a7\u0001\u001a\u00020\n2\u0008\u0010\u00a8\u0001\u001a\u00030\u00a9\u0001J\u0013\u0010\u00aa\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u00ab\u0001\u001a\u00020SH\u0016J\n\u0010\u00ac\u0001\u001a\u00030\u0092\u0001H\u0014J\u0011\u0010\u00ad\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u00a7\u0001\u001a\u00020\nJ\u0010\u0010\u00ae\u0001\u001a\u00030\u0092\u00012\u0006\u0010-\u001a\u00020\u0016J\u0011\u0010\u00af\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u00b0\u0001\u001a\u00020\u0016J\u0013\u0010\u00b1\u0001\u001a\u00030\u0092\u00012\t\u0008\u0001\u0010\u00b2\u0001\u001a\u00020\nJ \u0010\u00b1\u0001\u001a\u00030\u0092\u0001\"\u0005\u0008\u0000\u0010\u009f\u00012\u000f\u0010\u00b3\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009f\u00010\u00b4\u0001J\u0018\u0010]\u001a\u00030\u0092\u00012\u000f\u0010\u00b5\u0001\u001a\n\u0012\u0005\u0012\u00030\u0092\u00010\u009a\u0001J\u0084\u0001\u0010\u00b6\u0001\u001a\u00030\u0092\u0001\"\u0005\u0008\u0000\u0010\u009f\u00012s\u0010\u00b5\u0001\u001an\u0012\u0016\u0012\u00140\n\u00a2\u0006\u000f\u0008\u00b8\u0001\u0012\n\u0008\u00b9\u0001\u0012\u0005\u0008\u0008(\u00ba\u0001\u0012\u0019\u0012\u0017\u0018\u0001H\u009f\u0001\u00a2\u0006\u000f\u0008\u00b8\u0001\u0012\n\u0008\u00b9\u0001\u0012\u0005\u0008\u0008(\u00bb\u0001\u0012\u0016\u0012\u00140\n\u00a2\u0006\u000f\u0008\u00b8\u0001\u0012\n\u0008\u00b9\u0001\u0012\u0005\u0008\u0008(\u00bc\u0001\u0012\u0017\u0012\u0015H\u009f\u0001\u00a2\u0006\u000f\u0008\u00b8\u0001\u0012\n\u0008\u00b9\u0001\u0012\u0005\u0008\u0008(\u00bd\u0001\u0012\u0005\u0012\u00030\u0092\u00010\u00b7\u0001J \u0010\u00b6\u0001\u001a\u00030\u0092\u0001\"\u0005\u0008\u0000\u0010\u009f\u00012\u000f\u0010\u00be\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009f\u00010\u00bf\u0001J\'\u0010\u00c0\u0001\u001a\u00030\u0092\u00012\u001d\u0010\u00b5\u0001\u001a\u0018\u0012\u0005\u0012\u00030\u00c2\u0001\u0012\u0005\u0012\u00030\u00c3\u0001\u0012\u0005\u0012\u00030\u0092\u00010\u00c1\u0001J\u001f\u0010\u00c4\u0001\u001a\u00030\u0092\u0001\"\u0005\u0008\u0000\u0010\u009f\u00012\u000e\u0010\u00c5\u0001\u001a\t\u0012\u0005\u0012\u0003H\u009f\u00010\u001cJ\u0014\u0010\u00c6\u0001\u001a\u00030\u0092\u00012\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u0001H\u0002J \u0010\u00c9\u0001\u001a\u00030\u0092\u00012\t\u0008\u0002\u0010\u00ca\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u00cb\u0001\u001a\u00020\nH\u0007J \u0010\u00cc\u0001\u001a\u00030\u0092\u00012\t\u0008\u0002\u0010\u00ca\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u00cb\u0001\u001a\u00020\nH\u0007J\u0015\u0010\u00cd\u0001\u001a\u00030\u0092\u00012\t\u0010\u00ce\u0001\u001a\u0004\u0018\u00010\u0019H\u0002J\n\u0010\u00cf\u0001\u001a\u00030\u0092\u0001H\u0002J\n\u0010\u00d0\u0001\u001a\u00030\u0092\u0001H\u0002J\n\u0010\u00d1\u0001\u001a\u00030\u0092\u0001H\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R$\u0010.\u001a\u00020\r2\u0006\u0010-\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R&\u00103\u001a\u00020\n2\u0008\u0008\u0001\u0010-\u001a\u00020\n8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R&\u00108\u001a\u00020\n2\u0008\u0008\u0001\u0010-\u001a\u00020\n8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u00105\"\u0004\u0008:\u00107R(\u0010;\u001a\u0004\u0018\u00010\u00112\u0008\u0010-\u001a\u0004\u0018\u00010\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R&\u0010@\u001a\u00020\n2\u0008\u0008\u0001\u0010-\u001a\u00020\n8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u00105\"\u0004\u0008B\u00107R\u000e\u0010C\u001a\u00020DX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010F\u001a\u00020#2\u0006\u0010E\u001a\u00020#@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010%R\u0012\u0010H\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010I\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\u001f\"\u0004\u0008K\u0010!R&\u0010L\u001a\u00020\n2\u0008\u0008\u0001\u0010-\u001a\u00020\n8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008M\u00105\"\u0004\u0008N\u00107R&\u0010O\u001a\u00020\n2\u0008\u0008\u0001\u0010-\u001a\u00020\n8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008P\u00105\"\u0004\u0008Q\u00107R\u001e\u0010R\u001a\u00020\u00162\u0006\u0010E\u001a\u00020\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010\u001fR(\u0010T\u001a\u0004\u0018\u00010S2\u0008\u0010-\u001a\u0004\u0018\u00010S@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u001c\u0010Y\u001a\u0004\u0018\u00010ZX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R(\u0010`\u001a\u0004\u0018\u00010_2\u0008\u0010-\u001a\u0004\u0018\u00010_@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u000e\u0010e\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010f\u001a\u00020\n2\u0006\u0010E\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008g\u00105R$\u0010h\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u00168F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008i\u0010\u001f\"\u0004\u0008j\u0010!R$\u0010k\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u00168F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008l\u0010\u001f\"\u0004\u0008m\u0010!R\u001a\u0010n\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u00105\"\u0004\u0008p\u00107R\u001c\u0010q\u001a\u0004\u0018\u00010rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR\u001a\u0010w\u001a\u00020xX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R\u001e\u0010}\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u00105\"\u0004\u0008\u007f\u00107R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00192\u0008\u0010-\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0081\u0001\u0010*\"\u0005\u0008\u0082\u0001\u0010,R)\u0010\u0083\u0001\u001a\u00020\n2\u0008\u0008\u0001\u0010-\u001a\u00020\n8G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0084\u0001\u00105\"\u0005\u0008\u0085\u0001\u00107R\u001d\u0010\u0086\u0001\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0087\u0001\u00105\"\u0005\u0008\u0088\u0001\u00107R\u001d\u0010\u0089\u0001\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008a\u0001\u00105\"\u0005\u0008\u008b\u0001\u00107R\u001d\u0010\u008c\u0001\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008d\u0001\u00105\"\u0005\u0008\u008e\u0001\u00107R\u0010\u0010\u008f\u0001\u001a\u00030\u0090\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00d3\u0001"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_arrowGravity",
        "Lcom/skydoves/powerspinner/SpinnerGravity;",
        "_arrowPadding",
        "_arrowResource",
        "_arrowSize",
        "Lcom/skydoves/powerspinner/SpinnerSizeSpec;",
        "_arrowTint",
        "_dividerColor",
        "_dividerSize",
        "_showArrow",
        "",
        "_showDivider",
        "_spinnerPopupBackground",
        "Landroid/graphics/drawable/Drawable;",
        "_spinnerPopupElevation",
        "adapter",
        "Lcom/skydoves/powerspinner/PowerSpinnerInterface;",
        "arrowAnimate",
        "getArrowAnimate",
        "()Z",
        "setArrowAnimate",
        "(Z)V",
        "arrowAnimationDuration",
        "",
        "getArrowAnimationDuration",
        "()J",
        "setArrowAnimationDuration",
        "(J)V",
        "arrowDrawable",
        "getArrowDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setArrowDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "value",
        "arrowGravity",
        "getArrowGravity",
        "()Lcom/skydoves/powerspinner/SpinnerGravity;",
        "setArrowGravity",
        "(Lcom/skydoves/powerspinner/SpinnerGravity;)V",
        "arrowPadding",
        "getArrowPadding",
        "()I",
        "setArrowPadding",
        "(I)V",
        "arrowResource",
        "getArrowResource",
        "setArrowResource",
        "arrowSize",
        "getArrowSize",
        "()Lcom/skydoves/powerspinner/SpinnerSizeSpec;",
        "setArrowSize",
        "(Lcom/skydoves/powerspinner/SpinnerSizeSpec;)V",
        "arrowTint",
        "getArrowTint",
        "setArrowTint",
        "binding",
        "Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;",
        "<set-?>",
        "debounceDuration",
        "getDebounceDuration",
        "disableChangeTextWhenNotified",
        "dismissWhenNotifiedItemSelected",
        "getDismissWhenNotifiedItemSelected",
        "setDismissWhenNotifiedItemSelected",
        "dividerColor",
        "getDividerColor",
        "setDividerColor",
        "dividerSize",
        "getDividerSize",
        "setDividerSize",
        "isShowing",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "setLifecycleOwner",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "onSpinnerDismissListener",
        "Lcom/skydoves/powerspinner/OnSpinnerDismissListener;",
        "getOnSpinnerDismissListener",
        "()Lcom/skydoves/powerspinner/OnSpinnerDismissListener;",
        "setOnSpinnerDismissListener",
        "(Lcom/skydoves/powerspinner/OnSpinnerDismissListener;)V",
        "",
        "preferenceName",
        "getPreferenceName",
        "()Ljava/lang/String;",
        "setPreferenceName",
        "(Ljava/lang/String;)V",
        "previousDebounceTime",
        "selectedIndex",
        "getSelectedIndex",
        "showArrow",
        "getShowArrow",
        "setShowArrow",
        "showDivider",
        "getShowDivider",
        "setShowDivider",
        "spinnerItemHeight",
        "getSpinnerItemHeight",
        "setSpinnerItemHeight",
        "spinnerOutsideTouchListener",
        "Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;",
        "getSpinnerOutsideTouchListener",
        "()Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;",
        "setSpinnerOutsideTouchListener",
        "(Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;)V",
        "spinnerPopupAnimation",
        "Lcom/skydoves/powerspinner/SpinnerAnimation;",
        "getSpinnerPopupAnimation",
        "()Lcom/skydoves/powerspinner/SpinnerAnimation;",
        "setSpinnerPopupAnimation",
        "(Lcom/skydoves/powerspinner/SpinnerAnimation;)V",
        "spinnerPopupAnimationStyle",
        "getSpinnerPopupAnimationStyle",
        "setSpinnerPopupAnimationStyle",
        "spinnerPopupBackground",
        "getSpinnerPopupBackground",
        "setSpinnerPopupBackground",
        "spinnerPopupElevation",
        "getSpinnerPopupElevation",
        "setSpinnerPopupElevation",
        "spinnerPopupHeight",
        "getSpinnerPopupHeight",
        "setSpinnerPopupHeight",
        "spinnerPopupMaxHeight",
        "getSpinnerPopupMaxHeight",
        "setSpinnerPopupMaxHeight",
        "spinnerPopupWidth",
        "getSpinnerPopupWidth",
        "setSpinnerPopupWidth",
        "spinnerWindow",
        "Landroid/widget/PopupWindow;",
        "animateArrow",
        "",
        "shouldRotateUp",
        "applyWindowAnimation",
        "calculateSpinnerHeight",
        "calculateSpinnerHeight$powerspinner_release",
        "clearSelectedItem",
        "debounceShowOrDismiss",
        "action",
        "Lkotlin/Function0;",
        "dismiss",
        "getAttrs",
        "defStyleAttr",
        "getSpinnerAdapter",
        "T",
        "getSpinnerBodyView",
        "Landroid/widget/FrameLayout;",
        "getSpinnerHeight",
        "getSpinnerRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getSpinnerWidth",
        "notifyItemSelected",
        "index",
        "changedText",
        "",
        "onDestroy",
        "owner",
        "onFinishInflate",
        "selectItemByIndex",
        "setDisableChangeTextWhenNotified",
        "setIsFocusable",
        "isFocusable",
        "setItems",
        "resource",
        "itemList",
        "",
        "block",
        "setOnSpinnerItemSelectedListener",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "oldIndex",
        "oldItem",
        "newIndex",
        "newItem",
        "onSpinnerItemSelectedListener",
        "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;",
        "setOnSpinnerOutsideTouchListener",
        "Lkotlin/Function2;",
        "Landroid/view/View;",
        "Landroid/view/MotionEvent;",
        "setSpinnerAdapter",
        "powerSpinnerInterface",
        "setTypeArray",
        "a",
        "Landroid/content/res/TypedArray;",
        "show",
        "xOff",
        "yOff",
        "showOrDismiss",
        "updateCompoundDrawable",
        "drawable",
        "updateSpinnerArrow",
        "updateSpinnerPersistence",
        "updateSpinnerWindow",
        "Builder",
        "powerspinner_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

.field private _arrowPadding:I

.field private _arrowResource:I

.field private _arrowSize:Lcom/skydoves/powerspinner/SpinnerSizeSpec;

.field private _arrowTint:I

.field private _dividerColor:I

.field private _dividerSize:I

.field private _showArrow:Z

.field private _showDivider:Z

.field private _spinnerPopupBackground:Landroid/graphics/drawable/Drawable;

.field private _spinnerPopupElevation:I

.field private adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skydoves/powerspinner/PowerSpinnerInterface<",
            "*>;"
        }
    .end annotation
.end field

.field private arrowAnimate:Z

.field private arrowAnimationDuration:J

.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private final binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

.field private debounceDuration:J

.field public disableChangeTextWhenNotified:Z

.field private dismissWhenNotifiedItemSelected:Z

.field private isShowing:Z

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private onSpinnerDismissListener:Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

.field private preferenceName:Ljava/lang/String;

.field private previousDebounceTime:J

.field private selectedIndex:I

.field private spinnerItemHeight:I

.field private spinnerOutsideTouchListener:Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;

.field private spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

.field private spinnerPopupAnimationStyle:I

.field private spinnerPopupHeight:I

.field private spinnerPopupMaxHeight:I

.field private spinnerPopupWidth:I

.field private final spinnerWindow:Landroid/widget/PopupWindow;


# direct methods
.method public static synthetic $r8$lambda$7DP4-eP5L4aXW1fIgTsTCuJhgFI(Lkotlin/jvm/functions/Function4;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener$lambda-10(Lkotlin/jvm/functions/Function4;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A3d2yiaaW7YL44iNmeT8em5yty4(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow$lambda-6(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JavxkZjxXZXSd75q7VVolmi4xFQ(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerOutsideTouchListener$lambda-11(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDEZycWpZGcFB2SC-JLEisVlrYY(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setIsFocusable$lambda-13(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qDsrjxQAWqLnTWnFT6n3Z57wTbs(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerDismissListener$lambda-12(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rc5saOkoiZ59fi1Eh-FTPWmBdM0(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow$lambda-6$lambda-3$lambda-2(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-6IGVv9hB7wl76dndsbEVVoZao(Lcom/skydoves/powerspinner/PowerSpinnerView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->_init_$lambda-0(Lcom/skydoves/powerspinner/PowerSpinnerView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    move-result-object v1

    const-string v3, "inflate(LayoutInflater.from(context), null, false)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->selectedIndex:I

    .line 77
    new-instance v4, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    check-cast v4, Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    iput-object v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimate:Z

    .line 83
    const-wide/16 v5, 0xfa

    iput-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimationDuration:J

    .line 87
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/skydoves/powerspinner/R$drawable;->powerspinner_arrow:I

    invoke-static {v5, v0}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    const-wide/16 v5, 0x96

    iput-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceDuration:J

    .line 101
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    .line 111
    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    .line 121
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 153
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    .line 174
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v2, v5}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/view/View;F)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    .line 185
    iput v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    .line 206
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    .line 218
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimationStyle:I

    .line 221
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    .line 224
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    .line 227
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupMaxHeight:I

    .line 230
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    .line 233
    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismissWhenNotifiedItemSelected:Z

    .line 242
    sget-object v0, Lcom/skydoves/powerspinner/SpinnerAnimation;->NORMAL:Lcom/skydoves/powerspinner/SpinnerAnimation;

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 263
    nop

    .line 264
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 268
    iget-object v1, v1, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->body:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    .line 269
    nop

    .line 270
    const/4 v2, -0x2

    .line 267
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    .line 272
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda0;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getGravity()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setGravity(I)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, "viewContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_3

    .line 278
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 280
    .end local v0    # "viewContext":Landroid/content/Context;
    :cond_3
    nop

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributeSet"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    move-result-object v1

    const-string v3, "inflate(LayoutInflater.from(context), null, false)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->selectedIndex:I

    .line 77
    new-instance v4, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    check-cast v4, Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    iput-object v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimate:Z

    .line 83
    const-wide/16 v5, 0xfa

    iput-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimationDuration:J

    .line 87
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/skydoves/powerspinner/R$drawable;->powerspinner_arrow:I

    invoke-static {v5, v0}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    const-wide/16 v5, 0x96

    iput-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceDuration:J

    .line 101
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    .line 111
    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    .line 121
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 153
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    .line 174
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v2, v5}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/view/View;F)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    .line 185
    iput v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    .line 206
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    .line 218
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimationStyle:I

    .line 221
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    .line 224
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    .line 227
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupMaxHeight:I

    .line 230
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    .line 233
    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismissWhenNotifiedItemSelected:Z

    .line 242
    sget-object v0, Lcom/skydoves/powerspinner/SpinnerAnimation;->NORMAL:Lcom/skydoves/powerspinner/SpinnerAnimation;

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 263
    nop

    .line 264
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 268
    iget-object v1, v1, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->body:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    .line 269
    nop

    .line 270
    const/4 v2, -0x2

    .line 267
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    .line 272
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda0;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getGravity()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setGravity(I)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, "viewContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_3

    .line 278
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 280
    .end local v0    # "viewContext":Landroid/content/Context;
    :cond_3
    nop

    .line 285
    invoke-direct {p0, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getAttrs(Landroid/util/AttributeSet;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributeSet"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 288
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    move-result-object v1

    const-string v3, "inflate(LayoutInflater.from(context), null, false)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    .line 73
    const/4 v3, -0x1

    iput v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->selectedIndex:I

    .line 77
    new-instance v4, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    check-cast v4, Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    iput-object v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimate:Z

    .line 83
    const-wide/16 v5, 0xfa

    iput-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimationDuration:J

    .line 87
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/skydoves/powerspinner/R$drawable;->powerspinner_arrow:I

    invoke-static {v5, v0}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    const-wide/16 v5, 0x96

    iput-wide v5, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceDuration:J

    .line 101
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    .line 111
    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    .line 121
    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 153
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    .line 174
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v2, v5}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/view/View;F)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    .line 185
    iput v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    .line 206
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    .line 218
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimationStyle:I

    .line 221
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    .line 224
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    .line 227
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupMaxHeight:I

    .line 230
    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    .line 233
    iput-boolean v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismissWhenNotifiedItemSelected:Z

    .line 242
    sget-object v0, Lcom/skydoves/powerspinner/SpinnerAnimation;->NORMAL:Lcom/skydoves/powerspinner/SpinnerAnimation;

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 263
    nop

    .line 264
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 268
    iget-object v1, v1, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->body:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    .line 269
    nop

    .line 270
    const/4 v2, -0x2

    .line 267
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    .line 272
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda0;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getGravity()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setGravity(I)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, "viewContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_3

    .line 278
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 280
    .end local v0    # "viewContext":Landroid/content/Context;
    :cond_3
    nop

    .line 293
    invoke-direct {p0, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getAttrs(Landroid/util/AttributeSet;I)V

    .line 294
    return-void
.end method

.method private static final _init_$lambda-0(Lcom/skydoves/powerspinner/PowerSpinnerView;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/skydoves/powerspinner/PowerSpinnerView;
    .param p1, "it"    # Landroid/view/View;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->showOrDismiss$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$animateArrow(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;
    .param p1, "shouldRotateUp"    # Z

    .line 58
    invoke-direct {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->animateArrow(Z)V

    return-void
.end method

.method public static final synthetic access$applyWindowAnimation(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 58
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->applyWindowAnimation()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    .locals 1
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 58
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    return-object v0
.end method

.method public static final synthetic access$getSpinnerHeight(Lcom/skydoves/powerspinner/PowerSpinnerView;)I
    .locals 1
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 58
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerHeight()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSpinnerWidth(Lcom/skydoves/powerspinner/PowerSpinnerView;)I
    .locals 1
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 58
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerWidth()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 58
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static final synthetic access$setShowing$p(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerView;
    .param p1, "<set-?>"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->isShowing:Z

    return-void
.end method

.method private final animateArrow(Z)V
    .locals 6
    .param p1, "shouldRotateUp"    # Z

    .line 817
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimate:Z

    if-eqz v0, :cond_2

    .line 818
    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 819
    .local v2, "start":I
    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 820
    .local v0, "end":I
    :goto_1
    iget-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v1

    const/4 v1, 0x1

    aput v0, v4, v1

    const-string v1, "level"

    invoke-static {v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "$this$animateArrow_u24lambda_u2d15":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    .line 821
    .local v3, "$i$a$-apply-PowerSpinnerView$animateArrow$1":I
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimationDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 822
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 823
    nop

    .line 825
    .end local v0    # "end":I
    .end local v1    # "$this$animateArrow_u24lambda_u2d15":Landroid/animation/ObjectAnimator;
    .end local v2    # "start":I
    .end local v3    # "$i$a$-apply-PowerSpinnerView$animateArrow$1":I
    :cond_2
    return-void
.end method

.method private final applyWindowAnimation()V
    .locals 2

    .line 596
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimationStyle:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

    sget-object v1, Lcom/skydoves/powerspinner/PowerSpinnerView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/SpinnerAnimation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 602
    goto :goto_0

    .line 601
    :pswitch_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/powerspinner/R$style;->PowerSpinner_Elastic:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 600
    :pswitch_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/powerspinner/R$style;->PowerSpinner_Fade:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 599
    :pswitch_2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/skydoves/powerspinner/R$style;->PowerSpinner_DropDown:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 607
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final debounceShowOrDismiss(Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 780
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->previousDebounceTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 781
    iput-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->previousDebounceTime:J

    .line 782
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 784
    :cond_0
    return-void
.end method

.method private final getAttrs(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .line 297
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    nop

    .line 299
    :try_start_0
    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setTypeArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    nop

    .line 303
    return-void

    .line 300
    :catchall_0
    move-exception v1

    .line 301
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private final getAttrs(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 306
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    nop

    .line 308
    sget-object v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView:[I

    .line 309
    nop

    .line 310
    nop

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    nop

    .line 313
    :try_start_0
    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setTypeArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    nop

    .line 317
    return-void

    .line 314
    :catchall_0
    move-exception v1

    .line 315
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private final getSpinnerHeight()I
    .locals 3

    .line 724
    nop

    .line 725
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->calculateSpinnerHeight$powerspinner_release()I

    move-result v0

    goto :goto_0

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    .line 724
    :goto_0
    nop

    .line 729
    .local v0, "height":I
    nop

    .line 730
    iget v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupMaxHeight:I

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 731
    :cond_2
    if-le v2, v0, :cond_3

    .line 729
    :goto_1
    move v2, v0

    goto :goto_2

    .line 732
    :cond_3
    nop

    .line 729
    :goto_2
    return v2
.end method

.method private final getSpinnerWidth()I
    .locals 2

    .line 716
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 717
    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getWidth()I

    move-result v0

    .line 716
    :goto_0
    return v0
.end method

.method private static final setIsFocusable$lambda-13(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 1
    .param p0, "this$0"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    return-void
.end method

.method private static final setOnSpinnerDismissListener$lambda-12(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "$block"    # Lkotlin/jvm/functions/Function0;

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 691
    return-void
.end method

.method private static final setOnSpinnerItemSelectedListener$lambda-10(Lkotlin/jvm/functions/Function4;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$block"    # Lkotlin/jvm/functions/Function4;
    .param p1, "oldIndex"    # I
    .param p2, "oldItem"    # Ljava/lang/Object;
    .param p3, "newIndex"    # I
    .param p4, "newItem"    # Ljava/lang/Object;

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, p2, v1, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-void
.end method

.method private static final setOnSpinnerOutsideTouchListener$lambda-11(Lkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p0, "$block"    # Lkotlin/jvm/functions/Function2;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    const-string v0, "$block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setTypeArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 320
    move-object v0, p1

    .local v0, "$this$setTypeArray_u24lambda_u2d1":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 321
    .local v1, "$i$a$-apply-PowerSpinnerView$setTypeArray$1":I
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_drawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    nop

    .line 323
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_drawable:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 322
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    .line 326
    :cond_0
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_show:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_show:I

    iget-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    .line 330
    :cond_1
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_gravity:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    nop

    .line 332
    nop

    .line 333
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_gravity:I

    .line 334
    iget-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v3

    .line 332
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 331
    nop

    .line 337
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    goto :goto_0

    .line 338
    :cond_2
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    goto :goto_0

    .line 339
    :cond_3
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    goto :goto_0

    .line 340
    :cond_4
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 331
    :goto_0
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    goto :goto_1

    .line 341
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown argument: spinner_arrow_gravity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_6
    :goto_1
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 346
    nop

    .line 347
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_padding:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 346
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowPadding:I

    .line 350
    :cond_7
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_tint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 351
    nop

    .line 352
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_tint:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 351
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    .line 355
    :cond_8
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 356
    nop

    .line 357
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimate()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 356
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    .line 360
    :cond_9
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate_duration:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 361
    nop

    .line 362
    nop

    .line 363
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate_duration:I

    .line 364
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimationDuration()J

    move-result-wide v3

    long-to-int v3, v3

    .line 362
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 365
    int-to-long v2, v2

    .line 361
    invoke-virtual {p0, v2, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    .line 368
    :cond_a
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_show:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 369
    nop

    .line 370
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_show:I

    iget-boolean v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showDivider:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 369
    iput-boolean v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showDivider:Z

    .line 373
    :cond_b
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 374
    nop

    .line 375
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_size:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 374
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    .line 378
    :cond_c
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 379
    nop

    .line 380
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_color:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 379
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    .line 383
    :cond_d
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 384
    nop

    .line 385
    nop

    .line 386
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_background:I

    .line 385
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 384
    iput-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupBackground:Landroid/graphics/drawable/Drawable;

    .line 390
    :cond_e
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 391
    nop

    .line 392
    nop

    .line 393
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation:I

    .line 394
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimation()Lcom/skydoves/powerspinner/SpinnerAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v3

    .line 392
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 391
    nop

    .line 397
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerAnimation;->DROPDOWN:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_f

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->DROPDOWN:Lcom/skydoves/powerspinner/SpinnerAnimation;

    goto :goto_2

    .line 398
    :cond_f
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerAnimation;->FADE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_10

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->FADE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    goto :goto_2

    .line 399
    :cond_10
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerAnimation;->BOUNCE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_11

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->BOUNCE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    goto :goto_2

    .line 400
    :cond_11
    sget-object v3, Lcom/skydoves/powerspinner/SpinnerAnimation;->NORMAL:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_12

    sget-object v2, Lcom/skydoves/powerspinner/SpinnerAnimation;->NORMAL:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 391
    :goto_2
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    goto :goto_3

    .line 401
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown argument: spinner_popup_animation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 405
    :cond_13
    :goto_3
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation_style:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 406
    nop

    .line 407
    nop

    .line 408
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation_style:I

    .line 409
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimationStyle()I

    move-result v3

    .line 407
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 406
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    .line 413
    :cond_14
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 414
    nop

    .line 415
    nop

    .line 416
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_width:I

    .line 417
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v3

    .line 415
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 414
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    .line 421
    :cond_15
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 422
    nop

    .line 423
    nop

    .line 424
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_height:I

    .line 425
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v3

    .line 423
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 422
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    .line 429
    :cond_16
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 430
    nop

    .line 431
    nop

    .line 432
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_max_height:I

    .line 433
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupMaxHeight()I

    move-result v3

    .line 431
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 430
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupMaxHeight(I)V

    .line 437
    :cond_17
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 438
    nop

    .line 439
    nop

    .line 440
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_height:I

    .line 441
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerItemHeight()I

    move-result v3

    .line 439
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 438
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerItemHeight(I)V

    .line 445
    :cond_18
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 446
    nop

    .line 447
    nop

    .line 448
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_elevation:I

    .line 449
    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    .line 447
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 446
    iput v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    .line 453
    :cond_19
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_array:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 455
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_array:I

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 454
    nop

    .line 456
    .local v2, "itemArray":I
    if-eq v2, v3, :cond_1a

    .line 457
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    .line 461
    .end local v2    # "itemArray":I
    :cond_1a
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_dismiss_notified_select:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 462
    nop

    .line 463
    nop

    .line 464
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_dismiss_notified_select:I

    .line 465
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDismissWhenNotifiedItemSelected()Z

    move-result v3

    .line 463
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 462
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    .line 469
    :cond_1b
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_debounce_duration:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 470
    nop

    .line 471
    nop

    .line 472
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_debounce_duration:I

    .line 473
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDebounceDuration()J

    move-result-wide v3

    long-to-int v3, v3

    .line 471
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 475
    int-to-long v2, v2

    .line 470
    iput-wide v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceDuration:J

    .line 478
    :cond_1c
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_preference_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 479
    nop

    .line 480
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_preference_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setPreferenceName(Ljava/lang/String;)V

    .line 483
    :cond_1d
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_focusable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 484
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_focusable:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setIsFocusable(Z)V

    .line 486
    :cond_1e
    nop

    .line 320
    .end local v0    # "$this$setTypeArray_u24lambda_u2d1":Landroid/content/res/TypedArray;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$setTypeArray$1":I
    nop

    .line 487
    return-void
.end method

.method public static synthetic show$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V
    .locals 1

    .line 697
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->show(II)V

    return-void
.end method

.method public static synthetic showOrDismiss$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V
    .locals 1

    .line 754
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->showOrDismiss(II)V

    return-void
.end method

.method private final updateCompoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 562
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 563
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .local v0, "it":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 564
    .local v2, "$i$a$-let-PowerSpinnerView$updateCompoundDrawable$1":I
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string/jumbo v4, "wrap(it).mutate()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    .local v3, "wrappedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 566
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowTint()I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowTint()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 569
    :cond_1
    nop

    .line 563
    .end local v0    # "it":Landroid/graphics/drawable/Drawable;
    .end local v2    # "$i$a$-let-PowerSpinnerView$updateCompoundDrawable$1":I
    .end local v3    # "wrappedDrawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 570
    :goto_0
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()Lcom/skydoves/powerspinner/SpinnerGravity;

    move-result-object v0

    sget-object v2, Lcom/skydoves/powerspinner/PowerSpinnerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/SpinnerGravity;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 574
    :pswitch_0
    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 573
    :pswitch_1
    invoke-virtual {p0, v1, v1, p1, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 572
    :pswitch_2
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 571
    :pswitch_3
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 574
    :goto_1
    goto :goto_2

    .line 577
    :cond_2
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 579
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updateSpinnerArrow()V
    .locals 5

    .line 551
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowResource()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "context"

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowResource()I

    move-result v3

    invoke-static {v0, v3}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->contextDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setCompoundDrawablePadding(I)V

    .line 555
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowSize()Lcom/skydoves/powerspinner/SpinnerSizeSpec;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .local v0, "it":Lcom/skydoves/powerspinner/SpinnerSizeSpec;
    :cond_2
    const/4 v3, 0x0

    .line 556
    .local v3, "$i$a$-let-PowerSpinnerView$updateSpinnerArrow$1":I
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1, v0}, Lcom/skydoves/powerspinner/internals/DrawableExtensionKt;->resize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/skydoves/powerspinner/SpinnerSizeSpec;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    nop

    .line 555
    .end local v0    # "it":Lcom/skydoves/powerspinner/SpinnerSizeSpec;
    .end local v3    # "$i$a$-let-PowerSpinnerView$updateSpinnerArrow$1":I
    nop

    .line 558
    :goto_2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateCompoundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    return-void
.end method

.method private final updateSpinnerPersistence()V
    .locals 10

    .line 582
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    invoke-interface {v0}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 583
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->preferenceName:Ljava/lang/String;

    .local v0, "$this$whatIfNotNullOrEmpty$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 967
    .local v1, "$i$f$whatIfNotNullOrEmpty":I
    move-object v2, v0

    .local v2, "$this$whatIfNotNullOrEmpty$iv$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 968
    .local v3, "$i$f$whatIfNotNullOrEmpty":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    .line 969
    move-object v4, v2

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 584
    .local v5, "$i$a$-whatIfNotNullOrEmpty-PowerSpinnerView$updateSpinnerPersistence$1":I
    sget-object v6, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;->getInstance(Landroid/content/Context;)Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    move-result-object v6

    .line 585
    invoke-virtual {v6, v4}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->getSelectedIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 587
    iget-object v6, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 588
    sget-object v7, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;->getInstance(Landroid/content/Context;)Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->getSelectedIndex(Ljava/lang/String;)I

    move-result v7

    .line 587
    invoke-interface {v6, v7}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->notifyItemSelected(I)V

    .line 591
    :cond_2
    nop

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-whatIfNotNullOrEmpty-PowerSpinnerView$updateSpinnerPersistence$1":I
    goto :goto_2

    .line 971
    :cond_3
    const/4 v4, 0x0

    .line 972
    .local v4, "$i$a$-whatIfNotNullOrEmpty-WhatIfExtensionKt$whatIfNotNullOrEmpty$1$iv":I
    nop

    .line 973
    .end local v4    # "$i$a$-whatIfNotNullOrEmpty-WhatIfExtensionKt$whatIfNotNullOrEmpty$1$iv":I
    :goto_2
    nop

    .line 593
    .end local v0    # "$this$whatIfNotNullOrEmpty$iv":Ljava/lang/String;
    .end local v1    # "$i$f$whatIfNotNullOrEmpty":I
    .end local v2    # "$this$whatIfNotNullOrEmpty$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$whatIfNotNullOrEmpty":I
    :cond_4
    return-void
.end method

.method private final updateSpinnerWindow()V
    .locals 1

    .line 497
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda3;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void
.end method

.method private static final updateSpinnerWindow$lambda-6(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 8
    .param p0, "this$0"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    .local v0, "$this$updateSpinnerWindow_u24lambda_u2d6_u24lambda_u2d3":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    .line 499
    .local v1, "$i$a$-apply-PowerSpinnerView$updateSpinnerWindow$1$1":I
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 500
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 501
    new-instance v3, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda2;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 502
    nop

    .line 503
    new-instance v3, Lcom/skydoves/powerspinner/PowerSpinnerView$updateSpinnerWindow$1$1$2;

    invoke-direct {v3, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$updateSpinnerWindow$1$1$2;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    check-cast v3, Landroid/view/View$OnTouchListener;

    .line 502
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 514
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 517
    :cond_0
    nop

    .line 498
    .end local v0    # "$this$updateSpinnerWindow_u24lambda_u2d6_u24lambda_u2d3":Landroid/widget/PopupWindow;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$updateSpinnerWindow$1$1":I
    nop

    .line 518
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    iget-object v0, v0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->body:Landroid/widget/FrameLayout;

    .local v0, "$this$updateSpinnerWindow_u24lambda_u2d6_u24lambda_u2d5":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 519
    .local v1, "$i$a$-apply-PowerSpinnerView$updateSpinnerWindow$1$2":I
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :goto_0
    nop

    .line 525
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    .line 526
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    .line 527
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    .line 528
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    .line 524
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 530
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    new-instance v3, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    move-object v2, v3

    .line 532
    .local v2, "decoration":Landroidx/recyclerview/widget/DividerItemDecoration;
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v4, v3

    .local v4, "$this$updateSpinnerWindow_u24lambda_u2d6_u24lambda_u2d5_u24lambda_u2d4":Landroid/graphics/drawable/GradientDrawable;
    const/4 v5, 0x0

    .line 533
    .local v5, "$i$a$-apply-PowerSpinnerView$updateSpinnerWindow$1$2$shape$1":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 534
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 535
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 536
    nop

    .line 532
    .end local v4    # "$this$updateSpinnerWindow_u24lambda_u2d6_u24lambda_u2d5_u24lambda_u2d4":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "$i$a$-apply-PowerSpinnerView$updateSpinnerWindow$1$2$shape$1":I
    nop

    .line 537
    .local v3, "shape":Landroid/graphics/drawable/GradientDrawable;
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 540
    .end local v2    # "decoration":Landroidx/recyclerview/widget/DividerItemDecoration;
    .end local v3    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    nop

    .line 518
    .end local v0    # "$this$updateSpinnerWindow_u24lambda_u2d6_u24lambda_u2d5":Landroid/widget/FrameLayout;
    .end local v1    # "$i$a$-apply-PowerSpinnerView$updateSpinnerWindow$1$2":I
    nop

    .line 541
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 542
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 544
    :cond_3
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    if-eq v0, v1, :cond_4

    .line 545
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 547
    :cond_4
    return-void
.end method

.method private static final updateSpinnerWindow$lambda-6$lambda-3$lambda-2(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 1
    .param p0, "this$0"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->onSpinnerDismissListener:Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/skydoves/powerspinner/OnSpinnerDismissListener;->onDismiss()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final calculateSpinnerHeight$powerspinner_release()I
    .locals 4

    .line 614
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerAdapter()Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->getItemCount()I

    move-result v0

    .line 615
    .local v0, "itemSize":I
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 616
    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    .line 617
    iget v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int/2addr v2, v3

    return v2

    .line 619
    :cond_0
    iget v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    return v2
.end method

.method public final clearSelectedItem()V
    .locals 2

    .line 812
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->notifyItemSelected(ILjava/lang/CharSequence;)V

    .line 813
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 739
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$dismiss$1;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$dismiss$1;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceShowOrDismiss(Lkotlin/jvm/functions/Function0;)V

    .line 746
    return-void
.end method

.method public final getArrowAnimate()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimate:Z

    return v0
.end method

.method public final getArrowAnimationDuration()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimationDuration:J

    return-wide v0
.end method

.method public final getArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getArrowGravity()Lcom/skydoves/powerspinner/SpinnerGravity;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    return-object v0
.end method

.method public final getArrowPadding()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowPadding:I

    return v0
.end method

.method public final getArrowResource()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    return v0
.end method

.method public final getArrowSize()Lcom/skydoves/powerspinner/SpinnerSizeSpec;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowSize:Lcom/skydoves/powerspinner/SpinnerSizeSpec;

    return-object v0
.end method

.method public final getArrowTint()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    return v0
.end method

.method public final getDebounceDuration()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceDuration:J

    return-wide v0
.end method

.method public final getDismissWhenNotifiedItemSelected()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismissWhenNotifiedItemSelected:Z

    return v0
.end method

.method public final getDividerColor()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    return v0
.end method

.method public final getDividerSize()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    return v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getOnSpinnerDismissListener()Lcom/skydoves/powerspinner/OnSpinnerDismissListener;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->onSpinnerDismissListener:Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    return-object v0
.end method

.method public final getPreferenceName()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->preferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->selectedIndex:I

    return v0
.end method

.method public final getShowArrow()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    return v0
.end method

.method public final getShowDivider()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showDivider:Z

    return v0
.end method

.method public final getSpinnerAdapter()Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/skydoves/powerspinner/PowerSpinnerInterface<",
            "TT;>;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    return-object v0
.end method

.method public final getSpinnerBodyView()Landroid/widget/FrameLayout;
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    iget-object v0, v0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->body:Landroid/widget/FrameLayout;

    const-string v1, "binding.body"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSpinnerItemHeight()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    return v0
.end method

.method public final getSpinnerOutsideTouchListener()Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerOutsideTouchListener:Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;

    return-object v0
.end method

.method public final getSpinnerPopupAnimation()Lcom/skydoves/powerspinner/SpinnerAnimation;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

    return-object v0
.end method

.method public final getSpinnerPopupAnimationStyle()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimationStyle:I

    return v0
.end method

.method public final getSpinnerPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getSpinnerPopupElevation()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    return v0
.end method

.method public final getSpinnerPopupHeight()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    return v0
.end method

.method public final getSpinnerPopupMaxHeight()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupMaxHeight:I

    return v0
.end method

.method public final getSpinnerPopupWidth()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    return v0
.end method

.method public final getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;

    iget-object v0, v0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutBodyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isShowing()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->isShowing:Z

    return v0
.end method

.method public final notifyItemSelected(ILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "changedText"    # Ljava/lang/CharSequence;

    const-string v0, "changedText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->selectedIndex:I

    .line 799
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->disableChangeTextWhenNotified:Z

    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p0, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismissWhenNotifiedItemSelected:Z

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->preferenceName:Ljava/lang/String;

    .local v0, "$this$whatIfNotNullOrEmpty$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 975
    .local v1, "$i$f$whatIfNotNullOrEmpty":I
    move-object v2, v0

    .local v2, "$this$whatIfNotNullOrEmpty$iv$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 976
    .local v3, "$i$f$whatIfNotNullOrEmpty":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 977
    move-object v4, v2

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 806
    .local v5, "$i$a$-whatIfNotNullOrEmpty-PowerSpinnerView$notifyItemSelected$1":I
    sget-object v6, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->Companion:Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence$Companion;->getInstance(Landroid/content/Context;)Lcom/skydoves/powerspinner/PowerSpinnerPersistence;

    move-result-object v6

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/skydoves/powerspinner/PowerSpinnerPersistence;->persistSelectedIndex(Ljava/lang/String;I)V

    .line 807
    nop

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-whatIfNotNullOrEmpty-PowerSpinnerView$notifyItemSelected$1":I
    goto :goto_2

    .line 979
    :cond_4
    const/4 v4, 0x0

    .line 980
    .local v4, "$i$a$-whatIfNotNullOrEmpty-WhatIfExtensionKt$whatIfNotNullOrEmpty$1$iv":I
    nop

    .line 981
    .end local v4    # "$i$a$-whatIfNotNullOrEmpty-WhatIfExtensionKt$whatIfNotNullOrEmpty$1$iv":I
    :goto_2
    nop

    .line 982
    .end local v2    # "$this$whatIfNotNullOrEmpty$iv$iv":Ljava/lang/String;
    .end local v3    # "$i$f$whatIfNotNullOrEmpty":I
    nop

    .line 808
    .end local v0    # "$this$whatIfNotNullOrEmpty$iv":Ljava/lang/String;
    .end local v1    # "$i$f$whatIfNotNullOrEmpty":I
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 830
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    .line 831
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 832
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 490
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    .line 491
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow()V

    .line 492
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 493
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerPersistence()V

    .line 494
    return-void
.end method

.method public final selectItemByIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 793
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    invoke-interface {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->notifyItemSelected(I)V

    .line 794
    return-void
.end method

.method public final setArrowAnimate(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimate:Z

    return-void
.end method

.method public final setArrowAnimationDuration(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 83
    iput-wide p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowAnimationDuration:J

    return-void
.end method

.method public final setArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method public final setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V
    .locals 1
    .param p1, "value"    # Lcom/skydoves/powerspinner/SpinnerGravity;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowGravity:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 128
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 129
    return-void
.end method

.method public final setArrowPadding(I)V
    .locals 0
    .param p1, "value"    # I

    .line 148
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowPadding:I

    .line 149
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 150
    return-void
.end method

.method public final setArrowResource(I)V
    .locals 0
    .param p1, "value"    # I

    .line 107
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowResource:I

    .line 108
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 109
    return-void
.end method

.method public final setArrowSize(Lcom/skydoves/powerspinner/SpinnerSizeSpec;)V
    .locals 0
    .param p1, "value"    # Lcom/skydoves/powerspinner/SpinnerSizeSpec;

    .line 137
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowSize:Lcom/skydoves/powerspinner/SpinnerSizeSpec;

    .line 138
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 139
    return-void
.end method

.method public final setArrowTint(I)V
    .locals 0
    .param p1, "value"    # I

    .line 159
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_arrowTint:I

    .line 160
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 161
    return-void
.end method

.method public final setDisableChangeTextWhenNotified(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 765
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->disableChangeTextWhenNotified:Z

    .line 766
    return-void
.end method

.method public final setDismissWhenNotifiedItemSelected(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 233
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismissWhenNotifiedItemSelected:Z

    return-void
.end method

.method public final setDividerColor(I)V
    .locals 0
    .param p1, "value"    # I

    .line 191
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerColor:I

    .line 192
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow()V

    .line 193
    return-void
.end method

.method public final setDividerSize(I)V
    .locals 0
    .param p1, "value"    # I

    .line 180
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_dividerSize:I

    .line 181
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow()V

    .line 182
    return-void
.end method

.method public final setIsFocusable(Z)V
    .locals 1
    .param p1, "isFocusable"    # Z

    .line 773
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 774
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda6;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->onSpinnerDismissListener:Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    .line 775
    return-void
.end method

.method public final setItems(I)V
    .locals 2
    .param p1, "resource"    # I

    .line 642
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    instance-of v0, v0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStringArray(resource)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(Ljava/util/List;)V

    .line 645
    :cond_0
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .param p1, "itemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    invoke-interface {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->setItems(Ljava/util/List;)V

    .line 633
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "value"    # Landroidx/lifecycle/LifecycleOwner;

    .line 258
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 259
    :goto_1
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 260
    if-nez p1, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 261
    :goto_3
    return-void
.end method

.method public final setOnSpinnerDismissListener(Lcom/skydoves/powerspinner/OnSpinnerDismissListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    .line 239
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->onSpinnerDismissListener:Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    return-void
.end method

.method public final synthetic setOnSpinnerDismissListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->onSpinnerDismissListener:Lcom/skydoves/powerspinner/OnSpinnerDismissListener;

    .line 692
    return-void
.end method

.method public final setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V
    .locals 1
    .param p1, "onSpinnerItemSelectedListener"    # Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 665
    .local v0, "adapter":Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    invoke-interface {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V

    .line 666
    return-void
.end method

.method public final synthetic setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function4;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 673
    .local v0, "adapter":Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V

    .line 677
    return-void
.end method

.method public final synthetic setOnSpinnerOutsideTouchListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerOutsideTouchListener:Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;

    .line 684
    return-void
.end method

.method public final setPreferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 247
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->preferenceName:Ljava/lang/String;

    .line 248
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerPersistence()V

    .line 249
    return-void
.end method

.method public final setShowArrow(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showArrow:Z

    .line 118
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerArrow()V

    .line 119
    return-void
.end method

.method public final setShowDivider(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_showDivider:Z

    .line 170
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow()V

    .line 171
    return-void
.end method

.method public final setSpinnerAdapter(Lcom/skydoves/powerspinner/PowerSpinnerInterface;)V
    .locals 2
    .param p1, "powerSpinnerInterface"    # Lcom/skydoves/powerspinner/PowerSpinnerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/skydoves/powerspinner/PowerSpinnerInterface<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "powerSpinnerInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    .line 650
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->adapter:Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 653
    :cond_0
    return-void
.end method

.method public final setSpinnerItemHeight(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 230
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerItemHeight:I

    return-void
.end method

.method public final setSpinnerOutsideTouchListener(Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;

    .line 236
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerOutsideTouchListener:Lcom/skydoves/powerspinner/OnSpinnerOutsideTouchListener;

    return-void
.end method

.method public final setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/skydoves/powerspinner/SpinnerAnimation;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimation:Lcom/skydoves/powerspinner/SpinnerAnimation;

    return-void
.end method

.method public final setSpinnerPopupAnimationStyle(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 218
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupAnimationStyle:I

    return-void
.end method

.method public final setSpinnerPopupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .line 201
    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupBackground:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow()V

    .line 203
    return-void
.end method

.method public final setSpinnerPopupElevation(I)V
    .locals 0
    .param p1, "value"    # I

    .line 212
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->_spinnerPopupElevation:I

    .line 213
    invoke-direct {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->updateSpinnerWindow()V

    .line 214
    return-void
.end method

.method public final setSpinnerPopupHeight(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 224
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupHeight:I

    return-void
.end method

.method public final setSpinnerPopupMaxHeight(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 227
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupMaxHeight:I

    return-void
.end method

.method public final setSpinnerPopupWidth(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 221
    iput p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->spinnerPopupWidth:I

    return-void
.end method

.method public final show()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->show$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final show(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->show$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final show(II)V
    .locals 1
    .param p1, "xOff"    # I
    .param p2, "yOff"    # I

    .line 698
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->debounceShowOrDismiss(Lkotlin/jvm/functions/Function0;)V

    .line 713
    return-void
.end method

.method public final showOrDismiss()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->showOrDismiss$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final showOrDismiss(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->showOrDismiss$default(Lcom/skydoves/powerspinner/PowerSpinnerView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final showOrDismiss(II)V
    .locals 2
    .param p1, "xOff"    # I
    .param p2, "yOff"    # I

    .line 755
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 756
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    :cond_0
    iget-boolean v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView;->isShowing:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->show(II)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->dismiss()V

    .line 761
    :goto_0
    return-void
.end method

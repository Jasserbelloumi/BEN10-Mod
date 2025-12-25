.class public final Lnl/joery/animatedbottombar/AnimatedBottomBar;
.super Landroid/widget/FrameLayout;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;,
        Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00f2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0014\u00fc\u0001\u00fd\u0001\u00fe\u0001\u00ff\u0001\u0080\u0002\u0081\u0002\u0082\u0002\u0083\u0002\u0084\u0002\u0085\u0002B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u00be\u0001\u001a\u00020d2\u0007\u0010\u00bf\u0001\u001a\u00020]J\u0019\u0010\u00c0\u0001\u001a\u00020d2\u0007\u0010\u00c1\u0001\u001a\u00020\u00072\u0007\u0010\u00bf\u0001\u001a\u00020]J\t\u0010\u00c2\u0001\u001a\u00020dH\u0002J\u0013\u0010\u00c3\u0001\u001a\u00020d2\u0008\u0010\u00c4\u0001\u001a\u00030\u00c5\u0001H\u0002J\u0010\u0010\u00c6\u0001\u001a\u00020d2\u0007\u0010\u00bf\u0001\u001a\u00020]J\u0012\u0010\u00c7\u0001\u001a\u00020d2\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u0007J\u0010\u0010\u00c9\u0001\u001a\u00020d2\u0007\u0010\u00c1\u0001\u001a\u00020\u0007J(\u0010\u00ca\u0001\u001a\u00020]2\n\u0010\u00cb\u0001\u001a\u0005\u0018\u00010\u00cc\u00012\u0008\u0010\u00cd\u0001\u001a\u00030\u00ce\u00012\t\u0008\u0003\u0010\u00c8\u0001\u001a\u00020\u0007J(\u0010\u00ca\u0001\u001a\u00020]2\t\u0008\u0001\u0010\u00cf\u0001\u001a\u00020\u00072\t\u0008\u0001\u0010\u00d0\u0001\u001a\u00020\u00072\t\u0008\u0003\u0010\u00c8\u0001\u001a\u00020\u0007J\'\u0010\u00ca\u0001\u001a\u00020]2\t\u0008\u0001\u0010\u00cf\u0001\u001a\u00020\u00072\u0008\u0010\u00cd\u0001\u001a\u00030\u00ce\u00012\t\u0008\u0003\u0010\u00c8\u0001\u001a\u00020\u0007J\u0016\u0010\u00d1\u0001\u001a\u0004\u0018\u00010]2\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u00d2\u0001\u001a\u00020dH\u0002J\u0014\u0010\u00d3\u0001\u001a\u00020d2\t\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u0005H\u0002J$\u0010\u00d5\u0001\u001a\u00020d2\u0007\u0010\u00d6\u0001\u001a\u00020\u00072\u0007\u0010\u00d7\u0001\u001a\u00020\u00072\u0007\u0010\u00d8\u0001\u001a\u00020\u0007H\u0002J\t\u0010\u00d9\u0001\u001a\u00020dH\u0002J\t\u0010\u00da\u0001\u001a\u00020dH\u0002J\u001b\u0010\u00db\u0001\u001a\u00020d2\u0007\u0010\u00dc\u0001\u001a\u00020\u00072\u0007\u0010\u00dd\u0001\u001a\u00020\u0007H\u0014J-\u0010\u00de\u0001\u001a\u00020d2\u0007\u0010\u00df\u0001\u001a\u00020\u00072\u0007\u0010\u00e0\u0001\u001a\u00020\u00072\u0007\u0010\u00e1\u0001\u001a\u00020\u00072\u0007\u0010\u00e2\u0001\u001a\u00020\u0007H\u0014J\u0010\u0010\u00e3\u0001\u001a\u00020d2\u0007\u0010\u00bf\u0001\u001a\u00020]J\u0010\u0010\u00e4\u0001\u001a\u00020d2\u0007\u0010\u00c1\u0001\u001a\u00020\u0007J\u0012\u0010\u00e5\u0001\u001a\u00020d2\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u0007J\u001b\u0010\u00e6\u0001\u001a\u00020d2\u0007\u0010\u00bf\u0001\u001a\u00020]2\t\u0008\u0002\u0010\u00e7\u0001\u001a\u00020^J\u001b\u0010\u00e8\u0001\u001a\u00020d2\u0007\u0010\u00c1\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00e7\u0001\u001a\u00020^J\u001d\u0010\u00e9\u0001\u001a\u00020d2\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u00072\t\u0008\u0002\u0010\u00e7\u0001\u001a\u00020^J\u001e\u0010\u00ea\u0001\u001a\u00020d2\u0007\u0010\u00bf\u0001\u001a\u00020]2\u000c\u0008\u0002\u0010\u00eb\u0001\u001a\u0005\u0018\u00010\u00ec\u0001J \u0010\u00ed\u0001\u001a\u00020d2\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u00072\u000c\u0008\u0002\u0010\u00eb\u0001\u001a\u0005\u0018\u00010\u00ec\u0001J\u001e\u0010\u00ee\u0001\u001a\u00020d2\u0007\u0010\u00c1\u0001\u001a\u00020\u00072\u000c\u0008\u0002\u0010\u00eb\u0001\u001a\u0005\u0018\u00010\u00ec\u0001J\u000f\u0010\u00ef\u0001\u001a\u00020d2\u0006\u0010Y\u001a\u00020ZJ\u000f\u0010\u00f0\u0001\u001a\u00020d2\u0006\u0010g\u001a\u00020hJ\u0019\u0010\u00f1\u0001\u001a\u00020d2\u0007\u0010\u00bf\u0001\u001a\u00020]2\u0007\u0010\u00f2\u0001\u001a\u00020^J\u0019\u0010\u00f3\u0001\u001a\u00020d2\u0007\u0010\u00c1\u0001\u001a\u00020\u00072\u0007\u0010\u00f2\u0001\u001a\u00020^J\u001b\u0010\u00f4\u0001\u001a\u00020d2\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u00072\u0007\u0010\u00f2\u0001\u001a\u00020^J\u001b\u0010\u00f5\u0001\u001a\u00020d2\u0008\u0010\u00f6\u0001\u001a\u00030\u00f7\u00012\u0008\u0010\u00f8\u0001\u001a\u00030\u00f9\u0001J\u0013\u0010\u00fa\u0001\u001a\u00020d2\n\u0010\u00ba\u0001\u001a\u0005\u0018\u00010\u00bb\u0001J\u0013\u0010\u00fb\u0001\u001a\u00020d2\n\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u00bd\u0001R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00118F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R&\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R$\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010 \u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010\u0010R&\u0010#\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010\u000e\"\u0004\u0008%\u0010\u0010R&\u0010&\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010\u000e\"\u0004\u0008(\u0010\u0010R&\u0010)\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010\u000e\"\u0004\u0008+\u0010\u0010R&\u0010,\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010\u000e\"\u0004\u0008.\u0010\u0010R&\u0010/\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00080\u0010\u000e\"\u0004\u00081\u0010\u0010R&\u00102\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00083\u0010\u000e\"\u0004\u00084\u0010\u0010R$\u00106\u001a\u0002052\u0006\u0010\u000b\u001a\u0002058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R$\u0010<\u001a\u00020;2\u0006\u0010\u000b\u001a\u00020;8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R&\u0010A\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008B\u0010\u000e\"\u0004\u0008C\u0010\u0010R&\u0010D\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010\u000e\"\u0004\u0008F\u0010\u0010R&\u0010G\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008H\u0010\u000e\"\u0004\u0008I\u0010\u0010R$\u0010K\u001a\u00020J2\u0006\u0010\u000b\u001a\u00020J8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR&\u0010P\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010\u000e\"\u0004\u0008R\u0010\u0010R\u001b\u0010S\u001a\u00020T8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008U\u0010VR\u0010\u0010Y\u001a\u0004\u0018\u00010ZX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010[\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020^0\\X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR&\u0010c\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020d0\\X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010`\"\u0004\u0008f\u0010bR\u0010\u0010g\u001a\u0004\u0018\u00010hX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010i\u001a\u000e\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020d0\\X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010`\"\u0004\u0008k\u0010bR\u000e\u0010l\u001a\u00020mX\u0082.\u00a2\u0006\u0002\n\u0000R&\u0010n\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008o\u0010\u000e\"\u0004\u0008p\u0010\u0010R&\u0010q\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008r\u0010\u000e\"\u0004\u0008s\u0010\u0010R$\u0010t\u001a\u00020^2\u0006\u0010\u000b\u001a\u00020^8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u0011\u0010y\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010\u000eR\u0013\u0010{\u001a\u0004\u0018\u00010]8F\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010}R(\u0010\u007f\u001a\u00020~2\u0006\u0010\u000b\u001a\u00020~8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R+\u0010\u0085\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u000b\u001a\u00030\u0084\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001R+\u0010\u008a\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u000b\u001a\u00030\u0084\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u008b\u0001\u0010\u0087\u0001\"\u0006\u0008\u008c\u0001\u0010\u0089\u0001R)\u0010\u008d\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008e\u0001\u0010\u000e\"\u0005\u0008\u008f\u0001\u0010\u0010R)\u0010\u0090\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0091\u0001\u0010\u000e\"\u0005\u0008\u0092\u0001\u0010\u0010R)\u0010\u0093\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0094\u0001\u0010\u000e\"\u0005\u0008\u0095\u0001\u0010\u0010R)\u0010\u0096\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0097\u0001\u0010\u000e\"\u0005\u0008\u0098\u0001\u0010\u0010R)\u0010\u0099\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u009a\u0001\u0010\u000e\"\u0005\u0008\u009b\u0001\u0010\u0010R)\u0010\u009c\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u009d\u0001\u0010\u000e\"\u0005\u0008\u009e\u0001\u0010\u0010R\u0013\u0010\u009f\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0001\u0010\u000eR\u0010\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001X\u0082.\u00a2\u0006\u0002\n\u0000R \u0010\u00a3\u0001\u001a\u00030\u00a4\u00018@X\u0080\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00a7\u0001\u0010X\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R8\u0010\u00a8\u0001\u001a&\u0012\r\u0012\u000b \u00aa\u0001*\u0004\u0018\u00010]0]0\u00a9\u0001j\u0012\u0012\r\u0012\u000b \u00aa\u0001*\u0004\u0018\u00010]0]`\u00ab\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R)\u0010\u00ae\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00af\u0001\u0010\u000e\"\u0005\u0008\u00b0\u0001\u0010\u0010R)\u0010\u00b1\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00078G@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00b2\u0001\u0010\u000e\"\u0005\u0008\u00b3\u0001\u0010\u0010R+\u0010\u00b5\u0001\u001a\u00030\u00b4\u00012\u0007\u0010\u000b\u001a\u00030\u00b4\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\"\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u0012\u0010\u00ba\u0001\u001a\u0005\u0018\u00010\u00bb\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00bc\u0001\u001a\u0005\u0018\u00010\u00bd\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0086\u0002"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/AnimatedBottomBar;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "adapter",
        "Lnl/joery/animatedbottombar/TabAdapter;",
        "value",
        "animationDuration",
        "getAnimationDuration",
        "()I",
        "setAnimationDuration",
        "(I)V",
        "Landroid/view/animation/Interpolator;",
        "animationInterpolator",
        "getAnimationInterpolator",
        "()Landroid/view/animation/Interpolator;",
        "setAnimationInterpolator",
        "(Landroid/view/animation/Interpolator;)V",
        "animationInterpolatorRes",
        "getAnimationInterpolatorRes",
        "setAnimationInterpolatorRes",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;",
        "badgeAnimation",
        "getBadgeAnimation",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;",
        "setBadgeAnimation",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V",
        "badgeAnimationDuration",
        "getBadgeAnimationDuration",
        "setBadgeAnimationDuration",
        "badgeBackgroundColor",
        "getBadgeBackgroundColor",
        "setBadgeBackgroundColor",
        "badgeBackgroundColorRes",
        "getBadgeBackgroundColorRes",
        "setBadgeBackgroundColorRes",
        "badgeTextColor",
        "getBadgeTextColor",
        "setBadgeTextColor",
        "badgeTextColorRes",
        "getBadgeTextColorRes",
        "setBadgeTextColorRes",
        "badgeTextSize",
        "getBadgeTextSize",
        "setBadgeTextSize",
        "iconSize",
        "getIconSize",
        "setIconSize",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;",
        "indicatorAnimation",
        "getIndicatorAnimation",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;",
        "setIndicatorAnimation",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;)V",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;",
        "indicatorAppearance",
        "getIndicatorAppearance",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;",
        "setIndicatorAppearance",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;)V",
        "indicatorColor",
        "getIndicatorColor",
        "setIndicatorColor",
        "indicatorColorRes",
        "getIndicatorColorRes",
        "setIndicatorColorRes",
        "indicatorHeight",
        "getIndicatorHeight",
        "setIndicatorHeight",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;",
        "indicatorLocation",
        "getIndicatorLocation",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;",
        "setIndicatorLocation",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;)V",
        "indicatorMargin",
        "getIndicatorMargin",
        "setIndicatorMargin",
        "indicatorStyle",
        "Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;",
        "getIndicatorStyle$nl_joery_animatedbottombar_library",
        "()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;",
        "indicatorStyle$delegate",
        "Lkotlin/Lazy;",
        "onTabInterceptListener",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;",
        "onTabIntercepted",
        "Lkotlin/Function1;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "",
        "getOnTabIntercepted",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnTabIntercepted",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onTabReselected",
        "",
        "getOnTabReselected",
        "setOnTabReselected",
        "onTabSelectListener",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;",
        "onTabSelected",
        "getOnTabSelected",
        "setOnTabSelected",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rippleColor",
        "getRippleColor",
        "setRippleColor",
        "rippleColorRes",
        "getRippleColorRes",
        "setRippleColorRes",
        "rippleEnabled",
        "getRippleEnabled",
        "()Z",
        "setRippleEnabled",
        "(Z)V",
        "selectedIndex",
        "getSelectedIndex",
        "selectedTab",
        "getSelectedTab",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;",
        "selectedTabType",
        "getSelectedTabType",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;",
        "setSelectedTabType",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;)V",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;",
        "tabAnimation",
        "getTabAnimation",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;",
        "setTabAnimation",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V",
        "tabAnimationSelected",
        "getTabAnimationSelected",
        "setTabAnimationSelected",
        "tabColor",
        "getTabColor",
        "setTabColor",
        "tabColorDisabled",
        "getTabColorDisabled",
        "setTabColorDisabled",
        "tabColorDisabledRes",
        "getTabColorDisabledRes",
        "setTabColorDisabledRes",
        "tabColorRes",
        "getTabColorRes",
        "setTabColorRes",
        "tabColorSelected",
        "getTabColorSelected",
        "setTabColorSelected",
        "tabColorSelectedRes",
        "getTabColorSelectedRes",
        "setTabColorSelectedRes",
        "tabCount",
        "getTabCount",
        "tabIndicator",
        "Lnl/joery/animatedbottombar/TabIndicator;",
        "tabStyle",
        "Lnl/joery/animatedbottombar/BottomBarStyle$Tab;",
        "getTabStyle$nl_joery_animatedbottombar_library",
        "()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;",
        "tabStyle$delegate",
        "tabs",
        "Ljava/util/ArrayList;",
        "kotlin.jvm.PlatformType",
        "Lkotlin/collections/ArrayList;",
        "getTabs",
        "()Ljava/util/ArrayList;",
        "textAppearance",
        "getTextAppearance",
        "setTextAppearance",
        "textSize",
        "getTextSize",
        "setTextSize",
        "Landroid/graphics/Typeface;",
        "typeface",
        "getTypeface",
        "()Landroid/graphics/Typeface;",
        "setTypeface",
        "(Landroid/graphics/Typeface;)V",
        "viewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "viewPager2",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "addTab",
        "tab",
        "addTabAt",
        "tabIndex",
        "applyIndicatorStyle",
        "applyTabStyle",
        "type",
        "Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;",
        "clearBadgeAtTab",
        "clearBadgeAtTabId",
        "id",
        "clearBadgeAtTabIndex",
        "createTab",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "title",
        "",
        "iconRes",
        "titleRes",
        "findTabWithId",
        "initAdapter",
        "initAttributes",
        "attributeSet",
        "initInitialTabs",
        "tabsResId",
        "initialIndex",
        "initialTabId",
        "initRecyclerView",
        "initTabIndicator",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "removeTab",
        "removeTabAt",
        "removeTabById",
        "selectTab",
        "animate",
        "selectTabAt",
        "selectTabById",
        "setBadgeAtTab",
        "badge",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "setBadgeAtTabId",
        "setBadgeAtTabIndex",
        "setOnTabInterceptListener",
        "setOnTabSelectListener",
        "setTabEnabled",
        "enabled",
        "setTabEnabledAt",
        "setTabEnabledById",
        "setupWithNavController",
        "menu",
        "Landroid/view/Menu;",
        "navController",
        "Landroidx/navigation/NavController;",
        "setupWithViewPager",
        "setupWithViewPager2",
        "Badge",
        "BadgeAnimation",
        "IndicatorAnimation",
        "IndicatorAppearance",
        "IndicatorLocation",
        "OnTabInterceptListener",
        "OnTabSelectListener",
        "Tab",
        "TabAnimation",
        "TabType",
        "nl.joery.animatedbottombar.library"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lnl/joery/animatedbottombar/TabAdapter;

.field private final indicatorStyle$delegate:Lkotlin/Lazy;

.field private onTabInterceptListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

.field private onTabIntercepted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onTabReselected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTabSelectListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

.field private onTabSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private tabIndicator:Lnl/joery/animatedbottombar/TabIndicator;

.field private final tabStyle$delegate:Lkotlin/Lazy;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabSelected$1;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabSelected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabSelected:Lkotlin/jvm/functions/Function1;

    .line 37
    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabReselected:Lkotlin/jvm/functions/Function1;

    .line 38
    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabIntercepted$1;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabIntercepted$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabIntercepted:Lkotlin/jvm/functions/Function1;

    .line 40
    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabStyle$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->indicatorStyle$delegate:Lkotlin/Lazy;

    .line 50
    nop

    .line 51
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->initRecyclerView()V

    .line 52
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->initAdapter()V

    .line 53
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->initTabIndicator()V

    .line 54
    invoke-direct {p0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->initAttributes(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 30
    const/4 p2, 0x0

    move-object p5, p2

    check-cast p5, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 31
    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getOnTabInterceptListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 28
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabInterceptListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

    return-object v0
.end method

.method public static final synthetic access$getOnTabSelectListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 28
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabSelectListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    return-object v0
.end method

.method public static final synthetic access$getTabIndicator$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/TabIndicator;
    .locals 2
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 28
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabIndicator:Lnl/joery/animatedbottombar/TabIndicator;

    if-nez v0, :cond_0

    const-string v1, "tabIndicator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getViewPager$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 28
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public static final synthetic access$getViewPager2$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 28
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method public static final synthetic access$setOnTabInterceptListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p1, "<set-?>"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

    .line 28
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabInterceptListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

    return-void
.end method

.method public static final synthetic access$setOnTabSelectListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p1, "<set-?>"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    .line 28
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabSelectListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    return-void
.end method

.method public static final synthetic access$setTabIndicator$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;Lnl/joery/animatedbottombar/TabIndicator;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p1, "<set-?>"    # Lnl/joery/animatedbottombar/TabIndicator;

    .line 28
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabIndicator:Lnl/joery/animatedbottombar/TabIndicator;

    return-void
.end method

.method public static final synthetic access$setViewPager$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p1, "<set-?>"    # Landroidx/viewpager/widget/ViewPager;

    .line 28
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static final synthetic access$setViewPager2$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p1, "<set-?>"    # Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method private final applyIndicatorStyle()V
    .locals 2

    .line 320
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabIndicator:Lnl/joery/animatedbottombar/TabIndicator;

    if-nez v0, :cond_0

    const-string v1, "tabIndicator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabIndicator;->applyStyle()V

    .line 321
    return-void
.end method

.method private final applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V
    .locals 2
    .param p1, "type"    # Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    .line 316
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/TabAdapter;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 317
    return-void
.end method

.method public static synthetic createTab$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;IIIILjava/lang/Object;)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 356
    const/4 p3, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->createTab(III)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTab$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;ILjava/lang/String;IILjava/lang/Object;)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 344
    const/4 p3, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->createTab(ILjava/lang/String;I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTab$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IILjava/lang/Object;)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 330
    const/4 p3, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->createTab(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method private final findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 3
    .param p1, "id"    # I

    .line 654
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 655
    .local v1, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 656
    return-object v1

    .line 654
    .end local v1    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_0
    goto :goto_0

    .line 660
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final initAdapter()V
    .locals 4

    .line 239
    new-instance v0, Lnl/joery/animatedbottombar/TabAdapter;

    iget-object v1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recycler"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, p0, v1}, Lnl/joery/animatedbottombar/TabAdapter;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    .line 240
    nop

    .line 241
    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;

    invoke-direct {v1, p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V

    check-cast v1, Lkotlin/jvm/functions/Function5;

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabAdapter;->setOnTabSelected(Lkotlin/jvm/functions/Function5;)V

    .line 250
    nop

    .line 251
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;

    invoke-direct {v3, p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$2;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v3}, Lnl/joery/animatedbottombar/TabAdapter;->setOnTabReselected(Lkotlin/jvm/functions/Function2;)V

    .line 255
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;

    invoke-direct {v3, p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V

    check-cast v3, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v3}, Lnl/joery/animatedbottombar/TabAdapter;->setOnTabIntercepted(Lkotlin/jvm/functions/Function4;)V

    .line 259
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 260
    return-void
.end method

.method private final initAttributes(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .line 60
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1010038

    invoke-static {v0, v2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorDisabled(I)V

    .line 61
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1010036

    invoke-static {v0, v2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColor(I)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 64
    const v0, 0x101045c

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setRippleColor(I)V

    .line 65
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1010433

    invoke-static {v0, v2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getColorResCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorSelected(I)V

    .line 66
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getColorResCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorColor(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorSelected(I)V

    .line 69
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorColor(I)V

    .line 70
    :goto_0
    nop

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "context.obtainStyledAttr\u2026.AnimatedBottomBar, 0, 0)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    nop

    .line 74
    .local v0, "attr":Landroid/content/res/TypedArray;
    nop

    .line 76
    :try_start_0
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType$Companion;

    .line 77
    nop

    .line 78
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_selectedTabType:I

    .line 79
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v4

    invoke-virtual {v4}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v4

    invoke-virtual {v4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->getId()I

    move-result v4

    .line 77
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 76
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setSelectedTabType(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;)V

    .line 84
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation$Companion;

    .line 85
    nop

    .line 86
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_tabAnimationSelected:I

    .line 87
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v4

    invoke-virtual {v4}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->getId()I

    move-result v4

    .line 85
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabAnimationSelected(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V

    .line 90
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation$Companion;

    .line 91
    nop

    .line 92
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_tabAnimation:I

    .line 93
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v4

    invoke-virtual {v4}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->getId()I

    move-result v4

    .line 91
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V

    .line 96
    nop

    .line 97
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_animationDuration:I

    .line 98
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getAnimationDuration()I

    move-result v3

    .line 96
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setAnimationDuration(I)V

    .line 100
    sget-object v2, Lnl/joery/animatedbottombar/utils/Utils;->INSTANCE:Lnl/joery/animatedbottombar/utils/Utils;

    .line 101
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_animationInterpolator:I

    .line 103
    nop

    .line 101
    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 104
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 100
    invoke-virtual {v2, v3, v1, v5}, Lnl/joery/animatedbottombar/utils/Utils;->loadInterpolator(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    nop

    .line 109
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_rippleEnabled:I

    .line 110
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleEnabled()Z

    move-result v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setRippleEnabled(Z)V

    .line 112
    nop

    .line 113
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_rippleColor:I

    .line 114
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleColor()I

    move-result v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setRippleColor(I)V

    .line 118
    nop

    .line 119
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_tabColorSelected:I

    .line 120
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorSelected()I

    move-result v2

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorSelected(I)V

    .line 122
    nop

    .line 123
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_tabColorDisabled:I

    .line 124
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorDisabled()I

    move-result v2

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorDisabled(I)V

    .line 126
    nop

    .line 127
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_tabColor:I

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColor(I)V

    .line 130
    nop

    .line 131
    nop

    .line 132
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_textAppearance:I

    .line 133
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextAppearance()I

    move-result v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTextAppearance(I)V

    .line 135
    nop

    .line 136
    nop

    .line 137
    sget v1, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_textStyle:I

    .line 138
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 135
    nop

    .line 140
    .local v1, "textStyle":I
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "Typeface.create(typeface, textStyle)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    nop

    .line 142
    nop

    .line 143
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_textSize:I

    .line 144
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextSize()I

    move-result v3

    .line 142
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTextSize(I)V

    .line 148
    nop

    .line 149
    nop

    .line 152
    nop

    .line 149
    nop

    .line 150
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_iconSize:I

    .line 151
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getIconSize()I

    move-result v3

    int-to-float v3, v3

    .line 149
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 152
    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIconSize(I)V

    .line 155
    nop

    .line 156
    nop

    .line 159
    nop

    .line 156
    nop

    .line 157
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_indicatorHeight:I

    .line 158
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorHeight()I

    move-result v3

    int-to-float v3, v3

    .line 156
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 159
    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorHeight(I)V

    .line 160
    nop

    .line 161
    nop

    .line 164
    nop

    .line 161
    nop

    .line 162
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_indicatorMargin:I

    .line 163
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorMargin()I

    move-result v3

    int-to-float v3, v3

    .line 161
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 164
    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorMargin(I)V

    .line 165
    nop

    .line 166
    nop

    .line 167
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_indicatorColor:I

    .line 168
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorColor()I

    move-result v3

    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorColor(I)V

    .line 170
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance$Companion;

    .line 171
    nop

    .line 172
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_indicatorAppearance:I

    .line 173
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorAppearance()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;->getId()I

    move-result v5

    .line 171
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 170
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_4

    .line 175
    :cond_4
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorAppearance()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;

    move-result-object v2

    :goto_4
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorAppearance(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;)V

    .line 176
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;

    .line 177
    nop

    .line 178
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_indicatorLocation:I

    .line 179
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorLocation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->getId()I

    move-result v5

    .line 177
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 176
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_5

    .line 181
    :cond_5
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorLocation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    move-result-object v2

    :goto_5
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorLocation(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;)V

    .line 182
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;

    .line 183
    nop

    .line 184
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_indicatorAnimation:I

    .line 185
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->getId()I

    move-result v5

    .line 183
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 182
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_6

    .line 187
    :cond_6
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    move-result-object v2

    :goto_6
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;)V

    .line 190
    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation$Companion;

    .line 191
    nop

    .line 192
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_badgeAnimation:I

    .line 193
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;->getId()I

    move-result v5

    .line 191
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 190
    invoke-virtual {v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation$Companion;->fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_7

    .line 195
    :cond_7
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v2

    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v2

    :goto_7
    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V

    .line 196
    nop

    .line 197
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_badgeAnimationDuration:I

    .line 198
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimationDuration()I

    move-result v3

    .line 196
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAnimationDuration(I)V

    .line 200
    nop

    .line 201
    nop

    .line 202
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_badgeBackgroundColor:I

    .line 203
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getBackgroundColor()I

    move-result v3

    .line 201
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeBackgroundColor(I)V

    .line 205
    nop

    .line 206
    nop

    .line 207
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_badgeTextColor:I

    .line 208
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getTextColor()I

    move-result v3

    .line 206
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeTextColor(I)V

    .line 210
    nop

    .line 211
    nop

    .line 212
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_badgeTextSize:I

    .line 213
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v3

    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getTextSize()I

    move-result v3

    .line 211
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeTextSize(I)V

    .line 217
    sget v2, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_tabs:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 218
    .local v2, "tabsResId":I
    sget v3, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_selectedIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 219
    .local v3, "initialIndex":I
    nop

    .line 220
    sget v5, Lnl/joery/animatedbottombar/R$styleable;->AnimatedBottomBar_abb_selectedTabId:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 219
    nop

    .line 221
    .local v4, "initialTabId":I
    invoke-direct {p0, v2, v3, v4}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->initInitialTabs(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1    # "textStyle":I
    .end local v2    # "tabsResId":I
    .end local v3    # "initialIndex":I
    .end local v4    # "initialTabId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    nop

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private final initInitialTabs(III)V
    .locals 5
    .param p1, "tabsResId"    # I
    .param p2, "initialIndex"    # I
    .param p3, "initialTabId"    # I

    .line 268
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    sget-object v1, Lnl/joery/animatedbottombar/utils/MenuParser;->INSTANCE:Lnl/joery/animatedbottombar/utils/MenuParser;

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->isInEditMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lnl/joery/animatedbottombar/utils/MenuParser;->parse(Landroid/content/Context;IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    .local v1, "tabs":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 274
    .local v3, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    const-string v4, "tab"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->addTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 273
    .end local v3    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    goto :goto_0

    .line 277
    :cond_1
    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    .line 278
    if-ltz p2, :cond_3

    iget-object v3, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v3, :cond_2

    const-string v4, "adapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_3

    .line 281
    invoke-virtual {p0, p2, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabAt(IZ)V

    goto :goto_1

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute \'selectedIndex\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is out of bounds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 282
    :cond_4
    :goto_1
    nop

    .line 285
    if-eq p3, v0, :cond_6

    .line 286
    invoke-direct {p0, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 288
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    goto :goto_2

    .line 287
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attribute \'selectedTabId\', tab with this id does not exist."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 290
    :cond_6
    :goto_2
    return-void
.end method

.method private final initRecyclerView()V
    .locals 4

    .line 228
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 230
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recycler"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 233
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 234
    .local v0, "flexLayoutManager":Lcom/google/android/flexbox/FlexboxLayoutManager;
    iget-object v2, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 235
    iget-object v2, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->addView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method private final initTabIndicator()V
    .locals 5

    .line 263
    new-instance v0, Lnl/joery/animatedbottombar/TabIndicator;

    iget-object v1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recycler"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v3, :cond_1

    const-string v4, "adapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {v0, p0, v1, v3}, Lnl/joery/animatedbottombar/TabIndicator;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroidx/recyclerview/widget/RecyclerView;Lnl/joery/animatedbottombar/TabAdapter;)V

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabIndicator:Lnl/joery/animatedbottombar/TabIndicator;

    .line 264
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabIndicator:Lnl/joery/animatedbottombar/TabIndicator;

    if-nez v1, :cond_3

    const-string v2, "tabIndicator"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 265
    return-void
.end method

.method public static synthetic selectTab$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 444
    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    return-void
.end method

.method public static synthetic selectTabAt$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 419
    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabAt(IZ)V

    return-void
.end method

.method public static synthetic selectTabById$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 433
    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabById(IZ)V

    return-void
.end method

.method public static synthetic setBadgeAtTab$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 519
    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    return-void
.end method

.method public static synthetic setBadgeAtTabId$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 507
    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAtTabId(ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    return-void
.end method

.method public static synthetic setBadgeAtTabIndex$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 492
    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAtTabIndex(ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lnl/joery/animatedbottombar/TabAdapter;->addTab$default(Lnl/joery/animatedbottombar/TabAdapter;Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;IILjava/lang/Object;)V

    .line 368
    return-void
.end method

.method public final addTabAt(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2, p1}, Lnl/joery/animatedbottombar/TabAdapter;->addTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;I)V

    .line 378
    return-void
.end method

.method public final clearBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 3
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    invoke-virtual {p1, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->setBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 556
    iget-object v1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v1, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p1, v0}, Lnl/joery/animatedbottombar/TabAdapter;->applyTabBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 557
    return-void
.end method

.method public final clearBadgeAtTabId(I)V
    .locals 3
    .param p1, "id"    # I

    .line 544
    nop

    .line 545
    invoke-direct {p0, p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    nop

    .line 546
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->clearBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 547
    return-void

    .line 545
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final clearBadgeAtTabIndex(I)V
    .locals 3
    .param p1, "tabIndex"    # I

    .line 530
    if-ltz p1, :cond_2

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 534
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adapter.tabs[tabIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 535
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->clearBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 536
    return-void

    .line 531
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final createTab(III)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 2
    .param p1, "iconRes"    # I
    .param p2, "titleRes"    # I
    .param p3, "id"    # I

    .line 357
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(titleRes)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->createTab(ILjava/lang/String;I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v1

    return-object v1
.end method

.method public final createTab(ILjava/lang/String;I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 2
    .param p1, "iconRes"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2, p3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->createTab(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v1

    return-object v1
.end method

.method public final createTab(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    if-eqz p1, :cond_0

    .line 334
    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icon drawable cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getAnimationDuration()I
    .locals 1

    .line 715
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public final getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 722
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getAnimationInterpolatorRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public final getBadgeAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;
    .locals 1

    .line 895
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final getBadgeAnimationDuration()I
    .locals 1

    .line 902
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public final getBadgeBackgroundColor()I
    .locals 1

    .line 910
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public final synthetic getBadgeBackgroundColorRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 918
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final getBadgeTextColor()I
    .locals 1

    .line 925
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getTextColor()I

    move-result v0

    return v0
.end method

.method public final synthetic getBadgeTextColorRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 933
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final getBadgeTextSize()I
    .locals 1

    .line 939
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getTextSize()I

    move-result v0

    return v0
.end method

.method public final getIconSize()I
    .locals 1

    .line 834
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getIconSize()I

    move-result v0

    return v0
.end method

.method public final getIndicatorAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;
    .locals 1

    .line 887
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final getIndicatorAppearance()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;
    .locals 1

    .line 873
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorAppearance()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;

    move-result-object v0

    return-object v0
.end method

.method public final getIndicatorColor()I
    .locals 1

    .line 859
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorColor()I

    move-result v0

    return v0
.end method

.method public final synthetic getIndicatorColorRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 867
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final getIndicatorHeight()I
    .locals 1

    .line 843
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public final getIndicatorLocation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorLocation()Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    move-result-object v0

    return-object v0
.end method

.method public final getIndicatorMargin()I
    .locals 1

    .line 851
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->getIndicatorMargin()I

    move-result v0

    return v0
.end method

.method public final getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;
    .locals 1

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->indicatorStyle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    return-object v0
.end method

.method public final getOnTabIntercepted()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabIntercepted:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnTabReselected()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabReselected:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnTabSelected()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabSelected:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRippleColor()I
    .locals 1

    .line 748
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleColor()I

    move-result v0

    return v0
.end method

.method public final synthetic getRippleColorRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 757
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final getRippleEnabled()Z
    .locals 1

    .line 738
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleEnabled()Z

    move-result v0

    return v0
.end method

.method public final getSelectedIndex()I
    .locals 2

    .line 689
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public final getSelectedTab()Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 2

    .line 681
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getSelectedTab()Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;
    .locals 1

    .line 693
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v0

    return-object v0
.end method

.method public final getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final getTabColor()I
    .locals 1

    .line 796
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColor()I

    move-result v0

    return v0
.end method

.method public final getTabColorDisabled()I
    .locals 1

    .line 781
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorDisabled()I

    move-result v0

    return v0
.end method

.method public final synthetic getTabColorDisabledRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 789
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final synthetic getTabColorRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 804
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final getTabColorSelected()I
    .locals 1

    .line 766
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorSelected()I

    move-result v0

    return v0
.end method

.method public final synthetic getTabColorSelectedRes()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = ""
    .end annotation

    .line 774
    const/high16 v0, -0x80000000

    return v0
.end method

.method public final getTabCount()I
    .locals 2

    .line 673
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;
    .locals 1

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->tabStyle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    return-object v0
.end method

.method public final getTabs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            ">;"
        }
    .end annotation

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v1, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getTextAppearance()I
    .locals 1

    .line 812
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextAppearance()I

    move-result v0

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    .line 825
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextSize()I

    move-result v0

    return v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 818
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 293
    nop

    .line 294
    nop

    .line 295
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 296
    const/16 v0, 0x40

    invoke-static {v0}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getDpPx(I)I

    move-result v0

    .line 297
    const/high16 v1, 0x40000000    # 2.0f

    .line 295
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_0
    move v0, p2

    .line 295
    :goto_0
    nop

    .line 293
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 300
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 304
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recycler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->postInvalidate()V

    .line 305
    return-void
.end method

.method public final removeTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/TabAdapter;->removeTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 412
    return-void
.end method

.method public final removeTabAt(I)V
    .locals 3
    .param p1, "tabIndex"    # I

    .line 386
    if-ltz p1, :cond_2

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 390
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adapter.tabs[tabIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 391
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->removeTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 392
    return-void

    .line 387
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final removeTabById(I)V
    .locals 3
    .param p1, "id"    # I

    .line 400
    nop

    .line 401
    invoke-direct {p0, p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    nop

    .line 402
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->removeTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 403
    return-void

    .line 401
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p2, "animate"    # Z

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lnl/joery/animatedbottombar/TabAdapter;->selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    .line 446
    return-void
.end method

.method public final selectTabAt(IZ)V
    .locals 3
    .param p1, "tabIndex"    # I
    .param p2, "animate"    # Z

    .line 420
    if-ltz p1, :cond_2

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 424
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adapter.tabs[tabIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 425
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    .line 426
    return-void

    .line 421
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final selectTabById(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "animate"    # Z

    .line 434
    nop

    .line 435
    invoke-direct {p0, p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    nop

    .line 436
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    .line 437
    return-void

    .line 435
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setAnimationDuration(I)V
    .locals 1
    .param p1, "value"    # I

    .line 717
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setAnimationDuration(I)V

    .line 718
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ANIMATIONS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 719
    return-void
.end method

.method public final setAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/view/animation/Interpolator;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 725
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ANIMATIONS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 726
    return-void
.end method

.method public final setAnimationInterpolatorRes(I)V
    .locals 2
    .param p1, "value"    # I

    .line 732
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    const-string v1, "AnimationUtils.loadInterpolator(context, value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setAnimationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 733
    return-void
.end method

.method public final setBadgeAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->setAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V

    .line 898
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->BADGE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 899
    return-void
.end method

.method public final setBadgeAnimationDuration(I)V
    .locals 1
    .param p1, "value"    # I

    .line 904
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->setAnimationDuration(I)V

    .line 905
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->BADGE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 906
    return-void
.end method

.method public final setBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 9
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p2, "badge"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->setBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 521
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    invoke-virtual {v0, p1, v1}, Lnl/joery/animatedbottombar/TabAdapter;->applyTabBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 522
    return-void
.end method

.method public final setBadgeAtTabId(ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "badge"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    .line 508
    nop

    .line 509
    invoke-direct {p0, p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    nop

    .line 510
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 511
    return-void

    .line 509
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setBadgeAtTabIndex(ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 3
    .param p1, "tabIndex"    # I
    .param p2, "badge"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    .line 493
    if-ltz p1, :cond_2

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 497
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adapter.tabs[tabIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 498
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeAtTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 499
    return-void

    .line 494
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setBadgeBackgroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 912
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->setBackgroundColor(I)V

    .line 913
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->BADGE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 914
    return-void
.end method

.method public final setBadgeBackgroundColorRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 920
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeBackgroundColor(I)V

    .line 921
    return-void
.end method

.method public final setBadgeTextColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 927
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->setTextColor(I)V

    .line 928
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->BADGE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 929
    return-void
.end method

.method public final setBadgeTextColorRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 935
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setBadgeTextColor(I)V

    .line 936
    return-void
.end method

.method public final setBadgeTextSize(I)V
    .locals 1
    .param p1, "value"    # I

    .line 941
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->setTextSize(I)V

    .line 942
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->BADGE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 943
    return-void
.end method

.method public final setIconSize(I)V
    .locals 1
    .param p1, "value"    # I

    .line 836
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setIconSize(I)V

    .line 837
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ICON:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 838
    return-void
.end method

.method public final setIndicatorAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->setIndicatorAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;)V

    .line 890
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyIndicatorStyle()V

    .line 891
    return-void
.end method

.method public final setIndicatorAppearance(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->setIndicatorAppearance(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;)V

    .line 876
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyIndicatorStyle()V

    .line 877
    return-void
.end method

.method public final setIndicatorColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 861
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->setIndicatorColor(I)V

    .line 862
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyIndicatorStyle()V

    .line 863
    return-void
.end method

.method public final setIndicatorColorRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 869
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setIndicatorColor(I)V

    .line 870
    return-void
.end method

.method public final setIndicatorHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 845
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->setIndicatorHeight(I)V

    .line 846
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyIndicatorStyle()V

    .line 847
    return-void
.end method

.method public final setIndicatorLocation(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->setIndicatorLocation(Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;)V

    .line 883
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyIndicatorStyle()V

    .line 884
    return-void
.end method

.method public final setIndicatorMargin(I)V
    .locals 1
    .param p1, "value"    # I

    .line 853
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getIndicatorStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;->setIndicatorMargin(I)V

    .line 854
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyIndicatorStyle()V

    .line 855
    return-void
.end method

.method public final setOnTabInterceptListener(Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;)V
    .locals 1
    .param p1, "onTabInterceptListener"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

    const-string v0, "onTabInterceptListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabInterceptListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

    .line 313
    return-void
.end method

.method public final setOnTabIntercepted(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabIntercepted:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnTabReselected(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabReselected:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnTabSelectListener(Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;)V
    .locals 1
    .param p1, "onTabSelectListener"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    const-string v0, "onTabSelectListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabSelectListener:Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    .line 309
    return-void
.end method

.method public final setOnTabSelected(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->onTabSelected:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRippleColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 751
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setRippleColor(I)V

    .line 752
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->RIPPLE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 753
    return-void
.end method

.method public final setRippleColorRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 760
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setRippleColor(I)V

    .line 761
    return-void
.end method

.method public final setRippleEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 741
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setRippleEnabled(Z)V

    .line 742
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->RIPPLE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 743
    return-void
.end method

.method public final setSelectedTabType(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setSelectedTabType(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;)V

    .line 696
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->TAB_TYPE:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 697
    return-void
.end method

.method public final setTabAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTabAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V

    .line 711
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ANIMATIONS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 712
    return-void
.end method

.method public final setTabAnimationSelected(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V
    .locals 1
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTabAnimationSelected(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;)V

    .line 704
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ANIMATIONS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 705
    return-void
.end method

.method public final setTabColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 798
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTabColor(I)V

    .line 799
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->COLORS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 800
    return-void
.end method

.method public final setTabColorDisabled(I)V
    .locals 1
    .param p1, "value"    # I

    .line 783
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTabColorDisabled(I)V

    .line 784
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->COLORS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 785
    return-void
.end method

.method public final setTabColorDisabledRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 791
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorDisabled(I)V

    .line 792
    return-void
.end method

.method public final setTabColorRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 806
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColor(I)V

    .line 807
    return-void
.end method

.method public final setTabColorSelected(I)V
    .locals 1
    .param p1, "value"    # I

    .line 768
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTabColorSelected(I)V

    .line 769
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->COLORS:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 770
    return-void
.end method

.method public final setTabColorSelectedRes(I)V
    .locals 1
    .param p1, "value"    # I

    .line 776
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabColorSelected(I)V

    .line 777
    return-void
.end method

.method public final setTabEnabled(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p2, "enabled"    # Z

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/TabAdapter;->notifyTabChanged(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 484
    return-void
.end method

.method public final setTabEnabledAt(IZ)V
    .locals 3
    .param p1, "tabIndex"    # I
    .param p2, "enabled"    # Z

    .line 455
    if-ltz p1, :cond_2

    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 459
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->adapter:Lnl/joery/animatedbottombar/TabAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "adapter.tabs[tabIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 460
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabEnabled(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    .line 461
    return-void

    .line 456
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setTabEnabledById(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .line 470
    nop

    .line 471
    invoke-direct {p0, p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->findTabWithId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    nop

    .line 472
    .local v0, "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    invoke-virtual {p0, v0, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setTabEnabled(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    .line 473
    return-void

    .line 471
    .end local v0    # "tab":Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tab with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setTextAppearance(I)V
    .locals 1
    .param p1, "value"    # I

    .line 814
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTextAppearance(I)V

    .line 815
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->TEXT:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 816
    return-void
.end method

.method public final setTextSize(I)V
    .locals 1
    .param p1, "value"    # I

    .line 827
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTextSize(I)V

    .line 828
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->TEXT:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 829
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/Typeface;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->setTypeface(Landroid/graphics/Typeface;)V

    .line 821
    sget-object v0, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->TEXT:Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    .line 822
    return-void
.end method

.method public final setupWithNavController(Landroid/view/Menu;Landroidx/navigation/NavController;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "navController"    # Landroidx/navigation/NavController;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    sget-object v0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->INSTANCE:Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;

    invoke-virtual {v0, p0, p1, p2}, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->setupWithNavController(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroid/view/Menu;Landroidx/navigation/NavController;)V

    .line 651
    return-void
.end method

.method public final setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 565
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 567
    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabAt(IZ)V

    .line 569
    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager$1;

    invoke-direct {v0, p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager$1;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V

    check-cast v0, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 602
    :cond_0
    return-void
.end method

.method public final setupWithViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2
    .param p1, "viewPager2"    # Landroidx/viewpager2/widget/ViewPager2;

    .line 610
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 612
    if-eqz p1, :cond_0

    .line 613
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabAt(IZ)V

    .line 614
    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;

    invoke-direct {v0, p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 641
    :cond_0
    return-void
.end method
